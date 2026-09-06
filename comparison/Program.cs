using ChineseChessAI.Core;
using ChineseChessAI.Traditional;
using ChineseChessAI.Utils;
using System.Diagnostics;
using System.Runtime.InteropServices;
using System.Text.Json;

int milliseconds=args.Length>0?int.Parse(args[0]):100;
bool enhanced=args.Length<2 || args[1]!="base";
int pairs=args.Length>2?int.Parse(args[2]):4;
int quiescenceDepth=args.Length>3?int.Parse(args[3]):6;
string[][] openings=[[],["e3e4","e6e5"],["c3c4","c6c5"],["g0e2","g9e7"]];
var games=new List<object>();var generator=new MoveGenerator();
int[] mapping=[1,5,5,6,6,4,4,2,2,3,3,7,7,7,7,7];
var total=Stopwatch.StartNew();
for(int game=0;game<pairs*2;game++) {
    bool txcRed=game%2==0;
    var options=new TraditionalEngineOptions {OpeningBookMode=OpeningBookMode.Off,RootParallelism=1,SkipPerpetualCheckAtRoot=true};
    if(enhanced)options=options.WithEnhancedQuiescence();
    var engine=new TraditionalEngine(options);
    var board=new Board();var position=new Native.Position();Native.txc_start(ref position);
    var moves=new List<object>();int quiet=0;string winner="draw",reason="ply_limit";
    static void Apply(ref Native.Position position,Board board,Move m,int[] mapping) {
        var nativeMove=new Native.Move {From=(byte)((m.From%9)*12+9-m.From/9),To=(byte)((m.To%9)*12+9-m.To/9)};
        Native.txc_make(ref position,nativeMove,out _);board.Push(m.From,m.To);
        unsafe {
            for(int sq=0;sq<90;sq++) {
                byte id;
                fixed(byte* data=position.Board)id=data[(sq%9)*12+9-sq/9];
                int piece=id==0?0:mapping[id&15]*(id<32?1:-1);
                if(board.GetPiece(sq)!=piece)throw new Exception("Board synchronization failure");
            }
        }
    }
    foreach(string text in openings[game/2]) {
        var m=NotationConverter.UcciToMove(text)!.Value;
        if(!generator.GenerateLegalMoves(board,true).Contains(m))throw new Exception("Invalid opening");
        Apply(ref position,board,m,mapping);moves.Add(new {move=text,engine="opening"});
    }
    for(int ply=0;ply<200;ply++) {
        bool isTxc=board.IsRedTurn==txcRed;
        var legal=generator.GenerateLegalMoves(board,true);
        if(!board._cells.Contains((sbyte)1)||!board._cells.Contains((sbyte)-1)||legal.Count==0) {
            winner=isTxc?"traditional":"txc";reason="king_or_no_legal_moves";break;
        }
        if(board.GetRepetitionCount()>=3){reason="threefold";break;}
        if(quiet>=120){reason="120_no_progress_plies";break;}
        var clock=Stopwatch.StartNew();Move selected;int depth,score;long nodes;
        if(isTxc) {
            var r=Native.txc_search(ref position,4);
            selected=new Move((9-r.Move.From%12)*9+r.Move.From/12,(9-r.Move.To%12)*9+r.Move.To/12);
            depth=r.Depth;score=r.Score;nodes=(long)r.Nodes;
        } else {
            var r=engine.Search(board,new SearchLimits(64,milliseconds,quiescenceDepth));
            selected=r.BestMove;depth=r.Depth;score=r.Score;nodes=r.Nodes;
        }
        clock.Stop();
        if(!legal.Contains(selected))throw new Exception($"Illegal choice: game {game} ply {ply} TXC={isTxc} {selected}");
        moves.Add(new {move=selected.ToString(),engine=isTxc?"txc":"traditional",depth,score,nodes,ms=clock.Elapsed.TotalMilliseconds});
        Apply(ref position,board,selected,mapping);quiet=board.LastMoveWasIrreversible?0:quiet+1;
        if(ply%40==39)Console.WriteLine($"game={game+1} ply={ply+1} elapsed={total.Elapsed.TotalSeconds:F1}s");
    }
    var record=new {game=game+1,txcRed,opening=openings[game/2],winner,reason,plies=moves.Count,moves};games.Add(record);
    Directory.CreateDirectory("results");
    File.WriteAllText($"results/{(enhanced?"enhanced":"base")}_{milliseconds}ms_q{quiescenceDepth}.json",JsonSerializer.Serialize(new {
        source="D:/Documents/source/repos/ChineseChessAI",txcDepth=4,traditionalTimeMs=milliseconds,traditionalMaxDepth=64,
        enhanced,quiescenceDepth,book=false,threads=1,rules="shared MoveGenerator; perpetual legality skipped; threefold draw; 120 no-progress plies; 200 searched plies cap",games
    },new JsonSerializerOptions {WriteIndented=true}));
    Console.WriteLine($"FINISHED game={game+1} txcRed={txcRed} winner={winner} reason={reason} plies={moves.Count}");
}

static class Native {
    private const string Library="D:/Documents/txc-chess-engine/txc.dll";
    [StructLayout(LayoutKind.Sequential)] public struct Move {public byte From,To;}
    [StructLayout(LayoutKind.Sequential)] public unsafe struct Position {
        public fixed byte Board[256];public fixed byte Square[48];public byte Side;public int Score;public fixed byte Recent[6];
    }
    [StructLayout(LayoutKind.Sequential)] public unsafe struct Undo {
        public Move Move;public byte Piece,Captured;public int Score;public fixed byte Recent[6];
    }
    [StructLayout(LayoutKind.Sequential)] public struct Result {public Move Move;public int Score,Depth;public ulong Nodes;}
    [DllImport(Library,CallingConvention=CallingConvention.Cdecl)]public static extern void txc_start(ref Position p);
    [DllImport(Library,CallingConvention=CallingConvention.Cdecl)]public static extern Result txc_search(ref Position p,int depth);
    [DllImport(Library,CallingConvention=CallingConvention.Cdecl)]public static extern void txc_make(ref Position p,Move m,out Undo u);
}
