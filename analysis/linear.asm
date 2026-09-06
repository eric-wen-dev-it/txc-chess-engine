8000  a1 82     LDA ($82,X)
8002  95 31     STA $31,X
8004  92        ???
8005  a8        TAY
8006  3a        ???
8007  95 da     STA $da,X
8009  a1 b7     LDA ($b7,X)
800B  9d 97 0d  STA $0d97,X
800E  0a        ASL A
800F  a0 f4     LDY #$f4
8011  94 e6     STY $e6,X
8013  92        ???
8014  a8        TAY
8015  3a        ???
8016  a5 d6     LDA $d6
8018  af        ???
8019  33        ???
801A  a0 7a     LDY #$7a
801C  95 bf     STA $bf,X
801E  98        TYA
801F  4a        LSR A
8020  94 4f     STY $4f,X
8022  94 b3     STY $b3,X
8024  9a        TXS
8025  8f        ???
8026  92        ???
8027  fb        ???
8028  93        ???
8029  b2        ???
802A  0d 0a 92  ORA $920a
802D  e2        ???
802E  a1 7a     LDA ($7a,X)
8030  93        ???
8031  e0 9d     CPX #$9d
8033  6b        ???
8034  92        ???
8035  a3        ???
8036  92        ???
8037  b1 92     LDA ($92),Y
8039  a5 94     LDA $94
803B  a0 92     LDY #$92
803D  b1 92     LDA ($92),Y
803F  a7        ???
8040  93        ???
8041  68        PLA
8042  92        ???
8043  b4 93     LDY $93,X
8045  66 1a     ROR $1a
8047  a0 a6     LDY #$a6
8049  a6 c0     LDX $c0
804B  b5 00     LDA $00,X
804D  f0 21     BEQ $8070
804F  aa        TAX
8050  a4 c1     LDY $c1
8052  39 00 00  AND $0000,Y
8055  29 30     AND #$30
8057  d0 19     BNE $8072
8059  98        TYA
805A  38        SEC
805B  e5 c0     SBC $c0
805D  a8        TAY
805E  bd ba 81  LDA $81ba,X
8061  39 54 83  AND $8354,Y
8064  d0 0c     BNE $8072
8066  bd 10 81  LDA $8110,X
8069  48        PHA
806A  bd f0 80  LDA $80f0,X
806D  48        PHA
806E  60        RTS
806F  20 a9 ff  JSR $ffa9
8072  60        RTS
8073  ad a6 c1  LDA $c1a6
8076  b5 00     LDA $00,X
8078  c9 20     CMP #$20
807A  f0 57     BEQ $80d3
807C  a9 01     LDA #$01
807E  3d 60 81  AND $8160,X
8081  60        RTS
8082  a9 a6     LDA #$a6
8084  c1 b5     CMP ($b5,X)
8086  00        BRK
8087  c9 10     CMP #$10
8089  f0 48     BEQ $80d3
808B  a9 10     LDA #$10
808D  3d 60 81  AND $8160,X
8090  60        RTS
8091  a5 14     LDA $14
8093  4c a6 c1  JMP $c1a6
8096  a9 40     LDA #$40
8098  3d ea 81  AND $81ea,X
809B  60        RTS
809C  a0 a6     LDY #$a6
809E  c1 a9     CMP ($a9,X)
80A0  80        ???
80A1  3d ea 81  AND $81ea,X
80A4  60        RTS
80A5  b6 a6     LDX $a6,Y
80A7  c1 a9     CMP ($a9,X)
80A9  10 3d     BPL $80e8
80AB  ea        NOP
80AC  81 60     STA ($60,X)
80AE  68        PLA
80AF  5f        ???
80B0  b9 54 84  LDA $8454,Y
80B3  18        CLC
80B4  65 c0     ADC $c0
80B6  aa        TAX
80B7  b5 00     LDA $00,X
80B9  60        RTS
80BA  99 85 a6  STA $a685,Y
80BD  c1 a9     CMP ($a9,X)
80BF  20 3d ea  JSR $ea3d
80C2  81 d0     STA ($d0,X)
80C4  ad b9 54  LDA $54b9
80C7  84 18     STY $18
80C9  65 c0     ADC $c0
80CB  aa        TAX
80CC  b5 00     LDA $00,X
80CE  60        RTS
80CF  ac a0 a6  LDY $a6a0
80D2  c1 8a     CMP ($8a,X)
80D4  38        SEC
80D5  f9 54 84  SBC $8454,Y
80D8  aa        TAX
80D9  b5 00     LDA $00,X
80DB  f0 f6     BEQ $80d3
80DD  e4 c0     CPX $c0
80DF  60        RTS
80E0  aa        TAX
80E1  d6 a6     DEC $a6,X
80E3  c1 b5     CMP ($b5,X)
80E5  00        BRK
80E6  f0 eb     BEQ $80d3
80E8  8a        TXA
80E9  38        SEC
80EA  f9 54 84  SBC $8454,Y
80ED  aa        TAX
80EE  b5 00     LDA $00,X
80F0  f0 f6     BEQ $80e8
80F2  8a        TXA
80F3  38        SEC
80F4  f9 54 84  SBC $8454,Y
80F7  aa        TAX
80F8  b5 00     LDA $00,X
80FA  f0 f6     BEQ $80f2
80FC  e4 c0     CPX $c0
80FE  60        RTS
80FF  b4 73     LDY $73,X
8101  d0 d0     BNE $80d3
8103  e1 e1     SBC ($e1,X)
8105  af        ???
8106  af        ???
8107  a5 a5     LDA $a5
8109  bb        ???
810A  bb        ???
810B  93        ???
810C  93        ???
810D  93        ???
810E  93        ???
810F  93        ???
8110  82        ???
8111  d0 d0     BNE $80e3
8113  e1 e1     SBC ($e1,X)
8115  af        ???
8116  af        ???
8117  a5 a5     LDA $a5
8119  bb        ???
811A  bb        ???
811B  9c        ???
811C  9c        ???
811D  9c        ???
811E  9c        ???
811F  9c        ???
8120  80        ???
8121  80        ???
8122  80        ???
8123  80        ???
8124  80        ???
8125  80        ???
8126  80        ???
8127  80        ???
8128  80        ???
8129  80        ???
812A  80        ???
812B  80        ???
812C  80        ???
812D  80        ???
812E  80        ???
812F  80        ???
8130  80        ???
8131  80        ???
8132  80        ???
8133  80        ???
8134  80        ???
8135  80        ???
8136  80        ???
8137  80        ???
8138  80        ???
8139  80        ???
813A  80        ???
813B  80        ???
813C  80        ???
813D  80        ???
813E  80        ???
813F  80        ???
8140  01 00     ORA ($00,X)
8142  00        BRK
8143  00        BRK
8144  00        BRK
8145  00        BRK
8146  00        BRK
8147  02        ???
8148  02        ???
8149  04        ???
814A  04        ???
814B  08        PHP
814C  08        PHP
814D  08        PHP
814E  08        PHP
814F  08        PHP
8150  10 00     BPL $8152
8152  00        BRK
8153  00        BRK
8154  00        BRK
8155  00        BRK
8156  00        BRK
8157  20 20 40  JSR $4020
815A  40        RTI
815B  80        ???
815C  80        ???
815D  80        ???
815E  80        ???
815F  80        ???
8160  7f        ???
8161  7f        ???
8162  7b        ???
8163  7f        ???
8164  77        ???
8165  77        ???
8166  f7        ???
8167  b7        ???
8168  f7        ???
8169  f7        ???
816A  ff        ???
816B  ff        ???
816C  7f        ???
816D  7f        ???
816E  7f        ???
816F  7f        ???
8170  7f        ???
8171  f7        ???
8172  f7        ???
8173  f7        ???
8174  f7        ???
8175  f7        ???
8176  ff        ???
8177  ff        ???
8178  7b        ???
8179  7f        ???
817A  7f        ???
817B  7f        ???
817C  73        ???
817D  37        ???
817E  f7        ???
817F  f7        ???
8180  f7        ???
8181  b7        ???
8182  ff        ???
8183  ff        ???
8184  7c        ???
8185  7e 7c 7f  ROR $7f7c,X
8188  7f        ???
8189  f7        ???
818A  f7        ???
818B  c7        ???
818C  e7        ???
818D  c7        ???
818E  ff        ???
818F  ff        ???
8190  7e 7c 7a  ROR $7a7c,X
8193  7f        ???
8194  77        ???
8195  77        ???
8196  f7        ???
8197  a7        ???
8198  c7        ???
8199  e7        ???
819A  ff        ???
819B  ff        ???
819C  7c        ???
819D  7e 7c 7f  ROR $7f7c,X
81A0  7f        ???
81A1  f7        ???
81A2  f7        ???
81A3  c7        ???
81A4  e7        ???
81A5  c7        ???
81A6  ff        ???
81A7  ff        ???
81A8  7b        ???
81A9  7f        ???
81AA  7f        ???
81AB  7f        ???
81AC  73        ???
81AD  37        ???
81AE  f7        ???
81AF  f7        ???
81B0  f7        ???
81B1  b7        ???
81B2  ff        ???
81B3  ff        ???
81B4  7f        ???
81B5  7f        ???
81B6  7f        ???
81B7  7f        ???
81B8  7f        ???
81B9  f7        ???
81BA  f7        ???
81BB  f7        ???
81BC  f7        ???
81BD  f7        ???
81BE  ff        ???
81BF  ff        ???
81C0  7f        ???
81C1  7f        ???
81C2  7b        ???
81C3  7f        ???
81C4  77        ???
81C5  77        ???
81C6  f7        ???
81C7  b7        ???
81C8  f7        ???
81C9  f7        ???
81CA  01 02     ORA ($02,X)
81CC  02        ???
81CD  04        ???
81CE  04        ???
81CF  08        PHP
81D0  08        PHP
81D1  10 10     BPL $81e3
81D3  20 20 40  JSR $4020
81D6  40        RTI
81D7  40        RTI
81D8  40        RTI
81D9  40        RTI
81DA  01 02     ORA ($02,X)
81DC  02        ???
81DD  04        ???
81DE  04        ???
81DF  08        PHP
81E0  08        PHP
81E1  10 10     BPL $81f3
81E3  20 20 80  JSR $8020
81E6  80        ???
81E7  80        ???
81E8  80        ???
81E9  80        ???
81EA  7f        ???
81EB  7f        ???
81EC  5f        ???
81ED  7f        ???
81EE  3f        ???
81EF  3f        ???
81F0  bf        ???
81F1  9f        ???
81F2  bf        ???
81F3  bf        ???
81F4  ff        ???
81F5  ff        ???
81F6  7f        ???
81F7  7f        ???
81F8  7f        ???
81F9  7f        ???
81FA  7f        ???
81FB  bf        ???
81FC  bf        ???
81FD  bf        ???
81FE  bf        ???
81FF  bf        ???
8200  ff        ???
8201  ff        ???
8202  5f        ???
8203  7f        ???
8204  7f        ???
8205  7f        ???
8206  1f        ???
8207  1f        ???
8208  bf        ???
8209  bf        ???
820A  bf        ???
820B  9f        ???
820C  ff        ???
820D  ff        ???
820E  6e 7e 6e  ROR $6e7e
8211  7f        ???
8212  7f        ???
8213  bf        ???
8214  bf        ???
8215  ae be ae  LDX $aebe
8218  ff        ???
8219  ff        ???
821A  7e 6e 5e  ROR $5e6e,X
821D  7f        ???
821E  3f        ???
821F  3f        ???
8220  bf        ???
8221  9e        ???
8222  ae be ff  LDX $ffbe
8225  ff        ???
8226  6e 7e 6e  ROR $6e7e
8229  7f        ???
822A  7f        ???
822B  bf        ???
822C  bf        ???
822D  ae be ae  LDX $aebe
8230  ff        ???
8231  ff        ???
8232  5f        ???
8233  7f        ???
8234  7f        ???
8235  7f        ???
8236  1f        ???
8237  1f        ???
8238  bf        ???
8239  bf        ???
823A  bf        ???
823B  9f        ???
823C  ff        ???
823D  ff        ???
823E  7f        ???
823F  7f        ???
8240  7f        ???
8241  7f        ???
8242  7f        ???
8243  bf        ???
8244  bf        ???
8245  bf        ???
8246  bf        ???
8247  bf        ???
8248  ff        ???
8249  ff        ???
824A  7f        ???
824B  7f        ???
824C  5f        ???
824D  7f        ???
824E  3f        ???
824F  3f        ???
8250  bf        ???
8251  9f        ???
8252  bf        ???
8253  bf        ???
8254  ff        ???
8255  bc f9 f9  LDY $f9f9,X
8258  f9 f8 f8  SBC $f8f8,Y
825B  f8        SED
825C  f8        SED
825D  f8        SED
825E  f7        ???
825F  ef        ???
8260  3c        ???
8261  ef        ???
8262  f7        ???
8263  ff        ???
8264  ff        ???
8265  ff        ???
8266  ff        ???
8267  ff        ???
8268  ff        ???
8269  ff        ???
826A  df        ???
826B  f7        ???
826C  f9 f7 df  SBC $dff7,Y
826F  ff        ???
8270  ff        ???
8271  ff        ???
8272  ff        ???
8273  ff        ???
8274  ff        ???
8275  ff        ???
8276  ff        ???
8277  ff        ???
8278  f9 ff ff  SBC $ffff,Y
827B  ff        ???
827C  ff        ???
827D  ff        ???
827E  ff        ???
827F  ff        ???
8280  ff        ???
8281  ff        ???
8282  ff        ???
8283  ff        ???
8284  f9 ff ff  SBC $ffff,Y
8287  ff        ???
8288  ff        ???
8289  ff        ???
828A  ff        ???
828B  ff        ???
828C  ff        ???
828D  ff        ???
828E  ff        ???
828F  ff        ???
8290  f9 ff ff  SBC $ffff,Y
8293  ff        ???
8294  ff        ???
8295  ff        ???
8296  ff        ???
8297  ff        ???
8298  ff        ???
8299  ff        ???
829A  ff        ???
829B  ff        ???
829C  f9 ff ff  SBC $ffff,Y
829F  ff        ???
82A0  ff        ???
82A1  ff        ???
82A2  ff        ???
82A3  ff        ???
82A4  ff        ???
82A5  ff        ???
82A6  ff        ???
82A7  ff        ???
82A8  f9 ff ff  SBC $ffff,Y
82AB  ff        ???
82AC  ff        ???
82AD  ff        ???
82AE  ff        ???
82AF  ff        ???
82B0  ff        ???
82B1  ff        ???
82B2  ff        ???
82B3  ff        ???
82B4  f9 ff ff  SBC $ffff,Y
82B7  ff        ???
82B8  ff        ???
82B9  ff        ???
82BA  ff        ???
82BB  ff        ???
82BC  ff        ???
82BD  ff        ???
82BE  ff        ???
82BF  ff        ???
82C0  ff        ???
82C1  ff        ???
82C2  ff        ???
82C3  ff        ???
82C4  ff        ???
82C5  ff        ???
82C6  ff        ???
82C7  ff        ???
82C8  ff        ???
82C9  ff        ???
82CA  ff        ???
82CB  ff        ???
82CC  ff        ???
82CD  ff        ???
82CE  ff        ???
82CF  ff        ???
82D0  ff        ???
82D1  ff        ???
82D2  ff        ???
82D3  ff        ???
82D4  ff        ???
82D5  ff        ???
82D6  ff        ???
82D7  ff        ???
82D8  ff        ???
82D9  ff        ???
82DA  ff        ???
82DB  ff        ???
82DC  ff        ???
82DD  ff        ???
82DE  ff        ???
82DF  ff        ???
82E0  ff        ???
82E1  ff        ???
82E2  ff        ???
82E3  ff        ???
82E4  ff        ???
82E5  ff        ???
82E6  ff        ???
82E7  ff        ???
82E8  ff        ???
82E9  ff        ???
82EA  ff        ???
82EB  ff        ???
82EC  ff        ???
82ED  ff        ???
82EE  ff        ???
82EF  ff        ???
82F0  ff        ???
82F1  ff        ???
82F2  ff        ???
82F3  ff        ???
82F4  f9 ff ff  SBC $ffff,Y
82F7  ff        ???
82F8  ff        ???
82F9  ff        ???
82FA  ff        ???
82FB  ff        ???
82FC  ff        ???
82FD  ff        ???
82FE  ff        ???
82FF  ff        ???
8300  f9 ff ff  SBC $ffff,Y
8303  ff        ???
8304  ff        ???
8305  ff        ???
8306  ff        ???
8307  ff        ???
8308  ff        ???
8309  ff        ???
830A  ff        ???
830B  ff        ???
830C  f9 ff ff  SBC $ffff,Y
830F  ff        ???
8310  ff        ???
8311  ff        ???
8312  ff        ???
8313  ff        ???
8314  ff        ???
8315  ff        ???
8316  ff        ???
8317  ff        ???
8318  f9 ff ff  SBC $ffff,Y
831B  ff        ???
831C  ff        ???
831D  ff        ???
831E  ff        ???
831F  ff        ???
8320  ff        ???
8321  ff        ???
8322  ff        ???
8323  ff        ???
8324  f9 ff ff  SBC $ffff,Y
8327  ff        ???
8328  ff        ???
8329  ff        ???
832A  ff        ???
832B  ff        ???
832C  ff        ???
832D  ff        ???
832E  ff        ???
832F  ff        ???
8330  f9 ff ff  SBC $ffff,Y
8333  ff        ???
8334  ff        ???
8335  ff        ???
8336  ff        ???
8337  ff        ???
8338  ff        ???
8339  ff        ???
833A  df        ???
833B  f7        ???
833C  f9 f7 df  SBC $dff7,Y
833F  ff        ???
8340  ff        ???
8341  ff        ???
8342  ff        ???
8343  ff        ???
8344  ff        ???
8345  ff        ???
8346  f7        ???
8347  ef        ???
8348  3c        ???
8349  ef        ???
834A  f7        ???
834B  f8        SED
834C  f8        SED
834D  f8        SED
834E  f8        SED
834F  f8        SED
8350  f9 f9 f9  SBC $f9f9,Y
8353  7c        ???
8354  ff        ???
8355  b8        CLV
8356  f9 f9 f9  SBC $f9f9,Y
8359  f8        SED
835A  f8        SED
835B  f8        SED
835C  f8        SED
835D  f8        SED
835E  f7        ???
835F  ef        ???
8360  38        SEC
8361  ef        ???
8362  f7        ???
8363  ff        ???
8364  ff        ???
8365  ff        ???
8366  ff        ???
8367  ff        ???
8368  ff        ???
8369  ff        ???
836A  df        ???
836B  f7        ???
836C  f9 f7 df  SBC $dff7,Y
836F  ff        ???
8370  ff        ???
8371  ff        ???
8372  ff        ???
8373  ff        ???
8374  ff        ???
8375  ff        ???
8376  ff        ???
8377  ff        ???
8378  f9 ff ff  SBC $ffff,Y
837B  ff        ???
837C  ff        ???
837D  ff        ???
837E  ff        ???
837F  ff        ???
8380  ff        ???
8381  ff        ???
8382  ff        ???
8383  ff        ???
8384  f9 ff ff  SBC $ffff,Y
8387  ff        ???
8388  ff        ???
8389  ff        ???
838A  ff        ???
838B  ff        ???
838C  ff        ???
838D  ff        ???
838E  ff        ???
838F  ff        ???
8390  f9 ff ff  SBC $ffff,Y
8393  ff        ???
8394  ff        ???
8395  ff        ???
8396  ff        ???
8397  ff        ???
8398  ff        ???
8399  ff        ???
839A  ff        ???
839B  ff        ???
839C  f9 ff ff  SBC $ffff,Y
839F  ff        ???
83A0  ff        ???
83A1  ff        ???
83A2  ff        ???
83A3  ff        ???
83A4  ff        ???
83A5  ff        ???
83A6  ff        ???
83A7  ff        ???
83A8  f9 ff ff  SBC $ffff,Y
83AB  ff        ???
83AC  ff        ???
83AD  ff        ???
83AE  ff        ???
83AF  ff        ???
83B0  ff        ???
83B1  ff        ???
83B2  ff        ???
83B3  ff        ???
83B4  f9 ff ff  SBC $ffff,Y
83B7  ff        ???
83B8  ff        ???
83B9  ff        ???
83BA  ff        ???
83BB  ff        ???
83BC  ff        ???
83BD  ff        ???
83BE  ff        ???
83BF  ff        ???
83C0  ff        ???
83C1  ff        ???
83C2  ff        ???
83C3  ff        ???
83C4  ff        ???
83C5  ff        ???
83C6  ff        ???
83C7  ff        ???
83C8  ff        ???
83C9  ff        ???
83CA  ff        ???
83CB  ff        ???
83CC  ff        ???
83CD  ff        ???
83CE  ff        ???
83CF  ff        ???
83D0  ff        ???
83D1  ff        ???
83D2  ff        ???
83D3  ff        ???
83D4  ff        ???
83D5  ff        ???
83D6  ff        ???
83D7  ff        ???
83D8  ff        ???
83D9  ff        ???
83DA  ff        ???
83DB  ff        ???
83DC  ff        ???
83DD  ff        ???
83DE  ff        ???
83DF  ff        ???
83E0  ff        ???
83E1  ff        ???
83E2  ff        ???
83E3  ff        ???
83E4  ff        ???
83E5  ff        ???
83E6  ff        ???
83E7  ff        ???
83E8  ff        ???
83E9  ff        ???
83EA  ff        ???
83EB  ff        ???
83EC  ff        ???
83ED  ff        ???
83EE  ff        ???
83EF  ff        ???
83F0  ff        ???
83F1  ff        ???
83F2  ff        ???
83F3  ff        ???
83F4  f9 ff ff  SBC $ffff,Y
83F7  ff        ???
83F8  ff        ???
83F9  ff        ???
83FA  ff        ???
83FB  ff        ???
83FC  ff        ???
83FD  ff        ???
83FE  ff        ???
83FF  ff        ???
8400  f9 ff ff  SBC $ffff,Y
8403  ff        ???
8404  ff        ???
8405  ff        ???
8406  ff        ???
8407  ff        ???
8408  ff        ???
8409  ff        ???
840A  ff        ???
840B  ff        ???
840C  f9 ff ff  SBC $ffff,Y
840F  ff        ???
8410  ff        ???
8411  ff        ???
8412  ff        ???
8413  ff        ???
8414  ff        ???
8415  ff        ???
8416  ff        ???
8417  ff        ???
8418  f9 ff ff  SBC $ffff,Y
841B  ff        ???
841C  ff        ???
841D  ff        ???
841E  ff        ???
841F  ff        ???
8420  ff        ???
8421  ff        ???
8422  ff        ???
8423  ff        ???
8424  f9 ff ff  SBC $ffff,Y
8427  ff        ???
8428  ff        ???
8429  ff        ???
842A  ff        ???
842B  ff        ???
842C  ff        ???
842D  ff        ???
842E  ff        ???
842F  ff        ???
8430  f9 ff ff  SBC $ffff,Y
8433  ff        ???
8434  ff        ???
8435  ff        ???
8436  ff        ???
8437  ff        ???
8438  ff        ???
8439  ff        ???
843A  df        ???
843B  f7        ???
843C  f9 f7 df  SBC $dff7,Y
843F  ff        ???
8440  ff        ???
8441  ff        ???
8442  ff        ???
8443  ff        ???
8444  ff        ???
8445  ff        ???
8446  f7        ???
8447  ef        ???
8448  38        SEC
8449  ef        ???
844A  f7        ???
844B  f8        SED
844C  f8        SED
844D  f8        SED
844E  f8        SED
844F  f8        SED
8450  f9 f9 f9  SBC $f9f9,Y
8453  78        SEI
8454  00        BRK
8455  01 01     ORA ($01,X)
8457  01 01     ORA ($01,X)
8459  01 01     ORA ($01,X)
845B  01 01     ORA ($01,X)
845D  01 ff     ORA ($ff,X)
845F  0b        ???
8460  0c        ???
8461  0d 01 00  ORA $0001
8464  00        BRK
8465  00        BRK
8466  00        BRK
8467  00        BRK
8468  00        BRK
8469  00        BRK
846A  0b        ???
846B  0c        ???
846C  0c        ???
846D  0c        ???
846E  0d 00 00  ORA $0000
8471  00        BRK
8472  00        BRK
8473  00        BRK
8474  00        BRK
8475  00        BRK
8476  00        BRK
8477  00        BRK
8478  0c        ???
8479  00        BRK
847A  00        BRK
847B  00        BRK
847C  00        BRK
847D  00        BRK
847E  00        BRK
847F  00        BRK
8480  00        BRK
8481  00        BRK
8482  00        BRK
8483  00        BRK
8484  0c        ???
8485  00        BRK
8486  00        BRK
8487  00        BRK
8488  00        BRK
8489  00        BRK
848A  00        BRK
848B  00        BRK
848C  00        BRK
848D  00        BRK
848E  00        BRK
848F  00        BRK
8490  0c        ???
8491  00        BRK
8492  00        BRK
8493  00        BRK
8494  00        BRK
8495  00        BRK
8496  00        BRK
8497  00        BRK
8498  00        BRK
8499  00        BRK
849A  00        BRK
849B  00        BRK
849C  0c        ???
849D  00        BRK
849E  00        BRK
849F  00        BRK
84A0  00        BRK
84A1  00        BRK
84A2  00        BRK
84A3  00        BRK
84A4  00        BRK
84A5  00        BRK
84A6  00        BRK
84A7  00        BRK
84A8  0c        ???
84A9  00        BRK
84AA  00        BRK
84AB  00        BRK
84AC  00        BRK
84AD  00        BRK
84AE  00        BRK
84AF  00        BRK
84B0  00        BRK
84B1  00        BRK
84B2  00        BRK
84B3  00        BRK
84B4  0c        ???
84B5  00        BRK
84B6  00        BRK
84B7  00        BRK
84B8  00        BRK
84B9  00        BRK
84BA  00        BRK
84BB  00        BRK
84BC  00        BRK
84BD  00        BRK
84BE  ff        ???
84BF  ff        ???
84C0  ff        ???
84C1  ff        ???
84C2  ff        ???
84C3  ff        ???
84C4  ff        ???
84C5  ff        ???
84C6  ff        ???
84C7  ff        ???
84C8  ff        ???
84C9  ff        ???
84CA  ff        ???
84CB  ff        ???
84CC  ff        ???
84CD  ff        ???
84CE  ff        ???
84CF  ff        ???
84D0  ff        ???
84D1  ff        ???
84D2  ff        ???
84D3  ff        ???
84D4  ff        ???
84D5  ff        ???
84D6  ff        ???
84D7  ff        ???
84D8  ff        ???
84D9  ff        ???
84DA  ff        ???
84DB  ff        ???
84DC  ff        ???
84DD  ff        ???
84DE  ff        ???
84DF  ff        ???
84E0  ff        ???
84E1  ff        ???
84E2  ff        ???
84E3  ff        ???
84E4  ff        ???
84E5  ff        ???
84E6  ff        ???
84E7  ff        ???
84E8  ff        ???
84E9  ff        ???
84EA  ff        ???
84EB  00        BRK
84EC  00        BRK
84ED  00        BRK
84EE  00        BRK
84EF  00        BRK
84F0  00        BRK
84F1  00        BRK
84F2  00        BRK
84F3  00        BRK
84F4  f4        ???
84F5  00        BRK
84F6  00        BRK
84F7  00        BRK
84F8  00        BRK
84F9  00        BRK
84FA  00        BRK
84FB  00        BRK
84FC  00        BRK
84FD  00        BRK
84FE  00        BRK
84FF  00        BRK
8500  f4        ???
8501  00        BRK
8502  00        BRK
8503  00        BRK
8504  00        BRK
8505  00        BRK
8506  00        BRK
8507  00        BRK
8508  00        BRK
8509  00        BRK
850A  00        BRK
850B  00        BRK
850C  f4        ???
850D  00        BRK
850E  00        BRK
850F  00        BRK
8510  00        BRK
8511  00        BRK
8512  00        BRK
8513  00        BRK
8514  00        BRK
8515  00        BRK
8516  00        BRK
8517  00        BRK
8518  f4        ???
8519  00        BRK
851A  00        BRK
851B  00        BRK
851C  00        BRK
851D  00        BRK
851E  00        BRK
851F  00        BRK
8520  00        BRK
8521  00        BRK
8522  00        BRK
8523  00        BRK
8524  f4        ???
8525  00        BRK
8526  00        BRK
8527  00        BRK
8528  00        BRK
8529  00        BRK
852A  00        BRK
852B  00        BRK
852C  00        BRK
852D  00        BRK
852E  00        BRK
852F  00        BRK
8530  f4        ???
8531  00        BRK
8532  00        BRK
8533  00        BRK
8534  00        BRK
8535  00        BRK
8536  00        BRK
8537  00        BRK
8538  00        BRK
8539  00        BRK
853A  f3        ???
853B  f4        ???
853C  f4        ???
853D  f4        ???
853E  f5 00     SBC $00,X
8540  00        BRK
8541  00        BRK
8542  00        BRK
8543  00        BRK
8544  00        BRK
8545  00        BRK
8546  ff        ???
8547  f3        ???
8548  f4        ???
8549  f5 01     SBC $01,X
854B  ff        ???
854C  ff        ???
854D  ff        ???
854E  ff        ???
854F  ff        ???
8550  ff        ???
8551  ff        ???
8552  ff        ???
8553  ff        ???
8554  b9 48 8a  LDA $8a48,Y
8557  48        PHA
8558  98        TYA
8559  48        PHA
855A  a5 c0     LDA $c0
855C  48        PHA
855D  a5 c1     LDA $c1
855F  48        PHA
8560  b5 84     LDA $84,X
8562  85 c1     STA $c1
8564  8a        TXA
8565  49 30     EOR #$30
8567  aa        TAX
8568  8a        TXA
8569  48        PHA
856A  b5 84     LDA $84,X
856C  30 0e     BMI $857c
856E  85 c0     STA $c0
8570  20 49 80  JSR $8049
8573  d0 07     BNE $857c
8575  68        PLA
8576  38        SEC
8577  4c 85 85  JMP $8585
857A  68        PLA
857B  a5 68     LDA $68
857D  aa        TAX
857E  e8        INX
857F  8a        TXA
8580  29 0f     AND #$0f
8582  d0 e4     BNE $8568
8584  18        CLC
8585  68        PLA
8586  85 c1     STA $c1
8588  68        PLA
8589  85 c0     STA $c0
858B  68        PLA
858C  a8        TAY
858D  68        PLA
858E  aa        TAX
858F  68        PLA
8590  60        RTS
8591  d5 20     CMP $20,X
8593  60        RTS
8594  8d 20 09  STA $0920
8597  8d 80 05  STA $0580
859A  a9 00     LDA #$00
859C  85 c6     STA $c6
859E  85 cc     STA $cc
85A0  85 cd     STA $cd
85A2  20 86 88  JSR $8886
85A5  20 01 87  JSR $8701
85A8  ad 36 04  LDA $0436
85AB  4d 54 04  EOR $0454
85AE  4d 15 d0  EOR $d015
85B1  4d 17 d0  EOR $d017
85B4  d0 0f     BNE $85c5
85B6  ad 00 05  LDA $0500
85B9  c9 02     CMP #$02
85BB  90 08     BCC $85c5
85BD  29 01     AND #$01
85BF  8d 00 05  STA $0500
85C2  ee 00 05  INC $0500
85C5  ae 00 05  LDX $0500
85C8  e0 02     CPX #$02
85CA  b0 13     BCS $85df
85CC  ca        DEX
85CD  30 09     BMI $85d8
85CF  ad 81 05  LDA $0581
85D2  8d 08 04  STA $0408
85D5  ae 01 05  LDX $0501
85D8  8e 00 04  STX $0400
85DB  4c 90 86  JMP $8690
85DE  a5 a2     LDA $a2
85E0  07        ???
85E1  a9 ff     LDA #$ff
85E3  8d 00 04  STA $0400
85E6  9d 90 04  STA $0490,X
85E9  9d 98 04  STA $0498,X
85EC  9d a0 04  STA $04a0,X
85EF  9d a8 04  STA $04a8,X
85F2  ca        DEX
85F3  10 f1     BPL $85e6
85F5  a2 00     LDX #$00
85F7  86 cf     STX $cf
85F9  a5 c7     LDA $c7
85FB  29 10     AND #$10
85FD  f0 08     BEQ $8607
85FF  a2 0f     LDX #$0f
8601  a0 f1     LDY #$f1
8603  4c 0b 86  JMP $860b
8606  a2 a2     LDX #$a2
8608  f1 a0     SBC ($a0),Y
860A  0f        ???
860B  8e f2 06  STX $06f2
860E  8c f1 06  STY $06f1
8611  a2 00     LDX #$00
8613  8e 72 06  STX $0672
8616  8e 71 06  STX $0671
8619  ad 72 06  LDA $0672
861C  48        PHA
861D  ad f2 06  LDA $06f2
8620  48        PHA
8621  20 9c 86  JSR $869c
8624  68        PLA
8625  aa        TAX
8626  68        PLA
8627  cd 72 06  CMP $0672
862A  d0 28     BNE $8654
862C  ec f2 06  CPX $06f2
862F  d0 23     BNE $8654
8631  a5 c7     LDA $c7
8633  29 10     AND #$10
8635  f0 08     BEQ $863f
8637  a2 0f     LDX #$0f
8639  a0 f1     LDY #$f1
863B  4c 43 86  JMP $8643
863E  a2 a2     LDX #$a2
8640  f1 a0     SBC ($a0),Y
8642  0f        ???
8643  8e f2 06  STX $06f2
8646  8c f1 06  STY $06f1
8649  a2 00     LDX #$00
864B  8e 72 06  STX $0672
864E  8e 71 06  STX $0671
8651  20 9c 86  JSR $869c
8654  e6 cf     INC $cf
8656  a5 cf     LDA $cf
8658  cd 80 05  CMP $0580
865B  b0 33     BCS $8690
865D  a5 c7     LDA $c7
865F  29 10     AND #$10
8661  f0 15     BEQ $8678
8663  ad 72 07  LDA $0772
8666  38        SEC
8667  e9 32     SBC #$32
8669  8d 72 06  STA $0672
866C  ad f2 07  LDA $07f2
866F  e9 00     SBC #$00
8671  8d f2 06  STA $06f2
8674  4c 19 86  JMP $8619
8677  b4 ad     LDY $ad,X
8679  72        ???
867A  07        ???
867B  18        CLC
867C  69 32     ADC #$32
867E  8d 72 06  STA $0672
8681  ad f2 07  LDA $07f2
8684  69 00     ADC #$00
8686  8d f2 06  STA $06f2
8689  4c 19 86  JMP $8619
868C  a0 30     LDY #$30
868E  4c 54 ad  JMP $ad54
8691  00        BRK
8692  04        ???
8693  85 c0     STA $c0
8695  ad 08 04  LDA $0408
8698  85 c1     STA $c1
869A  60        RTS
869B  a0 a9     LDY #$a9
869D  ff        ???
869E  8d f2 05  STA $05f2
86A1  a2 10     LDX #$10
86A3  a5 c7     LDA $c7
86A5  29 10     AND #$10
86A7  d0 02     BNE $86ab
86A9  a2 f0     LDX #$f0
86AB  8e f2 07  STX $07f2
86AE  a9 00     LDA #$00
86B0  8d 72 07  STA $0772
86B3  85 ce     STA $ce
86B5  a9 ff     LDA #$ff
86B7  8d 80 04  STA $0480
86BA  ad 00 04  LDA $0400
86BD  30 18     BMI $86d7
86BF  85 c0     STA $c0
86C1  ad 08 04  LDA $0408
86C4  85 c1     STA $c1
86C6  a9 01     LDA #$01
86C8  85 ce     STA $ce
86CA  20 f3 86  JSR $86f3
86CD  a5 c0     LDA $c0
86CF  8d 80 04  STA $0480
86D2  a5 c1     LDA $c1
86D4  8d 88 04  STA $0488
86D7  a2 00     LDX #$00
86D9  bd 01 05  LDA $0501,X
86DC  85 c0     STA $c0
86DE  bd 81 05  LDA $0581,X
86E1  85 c1     STA $c1
86E3  8a        TXA
86E4  48        PHA
86E5  20 f3 86  JSR $86f3
86E8  68        PLA
86E9  aa        TAX
86EA  e8        INX
86EB  ec 00 05  CPX $0500
86EE  90 e9     BCC $86d9
86F0  60        RTS
86F1  b9 32 a5  LDA $a532,Y
86F4  c7        ???
86F5  29 10     AND #$10
86F7  f0 04     BEQ $86fd
86F9  4c fb b1  JMP $b1fb
86FC  a9 4c     LDA #$4c
86FE  83        ???
86FF  b5 f6     LDA $f6,X
8701  a9 00     LDA #$00
8703  8d 00 05  STA $0500
8706  a5 c7     LDA $c7
8708  29 30     AND #$30
870A  aa        TAX
870B  49 30     EOR #$30
870D  a8        TAY
870E  b5 84     LDA $84,X
8710  10 02     BPL $8714
8712  60        RTS
8713  c4 b9     CPY $b9
8715  84 00     STY $00
8717  85 c1     STA $c1
8719  8a        TXA
871A  48        PHA
871B  b5 84     LDA $84,X
871D  30 0c     BMI $872b
871F  85 c0     STA $c0
8721  20 49 80  JSR $8049
8724  d0 05     BNE $872b
8726  68        PLA
8727  4c ce 87  JMP $87ce
872A  49 68     EOR #$68
872C  aa        TAX
872D  e8        INX
872E  8a        TXA
872F  29 0f     AND #$0f
8731  d0 e6     BNE $8719
8733  a5 c7     LDA $c7
8735  29 30     AND #$30
8737  aa        TAX
8738  8a        TXA
8739  48        PHA
873A  b5 84     LDA $84,X
873C  30 46     BMI $8784
873E  85 c0     STA $c0
8740  85 c1     STA $c1
8742  bc cf 87  LDY $87cf,X
8745  98        TYA
8746  48        PHA
8747  b9 ff 87  LDA $87ff,Y
874A  f0 37     BEQ $8783
874C  18        CLC
874D  65 c1     ADC $c1
874F  85 c1     STA $c1
8751  aa        TAX
8752  b5 00     LDA $00,X
8754  30 21     BMI $8777
8756  20 8e 87  JSR $878e
8759  d0 0e     BNE $8769
875B  20 ce 87  JSR $87ce
875E  ad 00 05  LDA $0500
8761  c9 50     CMP #$50
8763  90 04     BCC $8769
8765  68        PLA
8766  68        PLA
8767  60        RTS
8768  5d 68 a8  EOR $a868,X
876B  68        PLA
876C  aa        TAX
876D  48        PHA
876E  bd ba 81  LDA $81ba,X
8771  29 06     AND #$06
8773  d0 d0     BNE $8745
8775  98        TYA
8776  48        PHA
8777  a5 c0     LDA $c0
8779  85 c1     STA $c1
877B  68        PLA
877C  a8        TAY
877D  c8        INY
877E  4c 45 87  JMP $8745
8781  20 43 68  JSR $6843
8784  68        PLA
8785  aa        TAX
8786  e8        INX
8787  8a        TXA
8788  29 0f     AND #$0f
878A  d0 ac     BNE $8738
878C  60        RTS
878D  7d 20 49  ADC $4920,X
8790  80        ???
8791  d0 38     BNE $87cb
8793  a5 c7     LDA $c7
8795  20 9c b8  JSR $b89c
8798  a5 c7     LDA $c7
879A  29 30     AND #$30
879C  a8        TAY
879D  49 30     EOR #$30
879F  aa        TAX
87A0  b9 84 00  LDA $0084,Y
87A3  85 c1     STA $c1
87A5  b5 84     LDA $84,X
87A7  30 15     BMI $87be
87A9  85 c0     STA $c0
87AB  8a        TXA
87AC  48        PHA
87AD  20 49 80  JSR $8049
87B0  d0 0a     BNE $87bc
87B2  68        PLA
87B3  a5 c7     LDA $c7
87B5  20 7e b9  JSR $b97e
87B8  a9 ff     LDA #$ff
87BA  60        RTS
87BB  61 68     ADC ($68,X)
87BD  aa        TAX
87BE  e8        INX
87BF  8a        TXA
87C0  29 0f     AND #$0f
87C2  d0 e1     BNE $87a5
87C4  a5 c7     LDA $c7
87C6  20 7e b9  JSR $b97e
87C9  a9 00     LDA #$00
87CB  60        RTS
87CC  cd 43 ae  CMP $ae43
87CF  00        BRK
87D0  05 a5     ORA $a5
87D2  c0 9d     CPY #$9d
87D4  01 05     ORA ($05,X)
87D6  a5 c1     LDA $c1
87D8  9d 81 05  STA $0581,X
87DB  ee 00 05  INC $0500
87DE  60        RTS
87DF  08        PHP
87E0  08        PHP
87E1  08        PHP
87E2  08        PHP
87E3  08        PHP
87E4  17        ???
87E5  17        ???
87E6  0d 0d 12  ORA $120d
87E9  12        ???
87EA  00        BRK
87EB  00        BRK
87EC  00        BRK
87ED  00        BRK
87EE  00        BRK
87EF  08        PHP
87F0  08        PHP
87F1  08        PHP
87F2  08        PHP
87F3  08        PHP
87F4  17        ???
87F5  17        ???
87F6  0d 0d 12  ORA $120d
87F9  12        ???
87FA  04        ???
87FB  04        ???
87FC  04        ???
87FD  04        ???
87FE  04        ???
87FF  01 f4     ORA ($f4,X)
8801  0c        ???
8802  00        BRK
8803  ff        ???
8804  f4        ???
8805  0c        ???
8806  00        BRK
8807  ff        ???
8808  01 f4     ORA ($f4,X)
880A  0c        ???
880B  00        BRK
880C  f3        ???
880D  0b        ???
880E  f5 0d     SBC $0d,X
8810  00        BRK
8811  e6 16     INC $16
8813  ea        NOP
8814  1a        ???
8815  00        BRK
8816  f2        ???
8817  0a        ASL A
8818  f6 0e     INC $0e,X
881A  e7        ???
881B  e9 17     SBC #$17
881D  19 00 20  ORA $2000,Y
8820  85 cf     STA $cf
8822  a9 00     LDA #$00
8824  85 c6     STA $c6
8826  85 cc     STA $cc
8828  85 cd     STA $cd
882A  85 c8     STA $c8
882C  a9 80     LDA #$80
882E  85 c9     STA $c9
8830  a2 07     LDX #$07
8832  a9 ff     LDA #$ff
8834  8d 00 04  STA $0400
8837  9d 90 04  STA $0490,X
883A  9d 98 04  STA $0498,X
883D  9d a0 04  STA $04a0,X
8840  9d a8 04  STA $04a8,X
8843  ca        DEX
8844  10 f1     BPL $8837
8846  a2 00     LDX #$00
8848  8e 72 06  STX $0672
884B  8e 71 06  STX $0671
884E  a5 c7     LDA $c7
8850  29 10     AND #$10
8852  f0 11     BEQ $8865
8854  a2 0f     LDX #$0f
8856  a0 f1     LDY #$f1
8858  8e f2 06  STX $06f2
885B  8c f1 06  STY $06f1
885E  20 af 92  JSR $92af
8861  4c 78 88  JMP $8878
8864  6c a5 c7  JMP ($c7a5)
8867  29 20     AND #$20
8869  f0 0d     BEQ $8878
886B  a2 f1     LDX #$f1
886D  a0 0f     LDY #$0f
886F  8e f2 06  STX $06f2
8872  8c f1 06  STY $06f1
8875  20 11 a2  JSR $a211
8878  ad 00 04  LDA $0400
887B  85 c0     STA $c0
887D  ad 08 04  LDA $0408
8880  85 c1     STA $c1
8882  60        RTS
8883  6c 20 02  JMP ($0220)
8886  a9 00     LDA #$00
8888  85 c8     STA $c8
888A  a9 80     LDA #$80
888C  85 c9     STA $c9
888E  a2 10     LDX #$10
8890  b4 84     LDY $84,X
8892  30 15     BMI $88a9
8894  bd bf 88  LDA $88bf,X
8897  85 ca     STA $ca
8899  bd df 88  LDA $88df,X
889C  85 cb     STA $cb
889E  a5 c8     LDA $c8
88A0  18        CLC
88A1  71 ca     ADC ($ca),Y
88A3  85 c8     STA $c8
88A5  90 02     BCC $88a9
88A7  e6 c9     INC $c9
88A9  e8        INX
88AA  e0 20     CPX #$20
88AC  d0 e2     BNE $8890
88AE  a2 20     LDX #$20
88B0  b4 84     LDY $84,X
88B2  30 15     BMI $88c9
88B4  bd bf 88  LDA $88bf,X
88B7  85 ca     STA $ca
88B9  bd df 88  LDA $88df,X
88BC  85 cb     STA $cb
88BE  a5 c8     LDA $c8
88C0  38        SEC
88C1  f1 ca     SBC ($ca),Y
88C3  85 c8     STA $c8
88C5  b0 02     BCS $88c9
88C7  c6 c9     DEC $c9
88C9  e8        INX
88CA  e0 30     CPX #$30
88CC  d0 e2     BNE $88b0
88CE  60        RTS
88CF  8f        ???
88D0  3f        ???
88D1  3f        ???
88D2  17        ???
88D3  17        ???
88D4  ef        ???
88D5  ef        ???
88D6  67        ???
88D7  67        ???
88D8  67        ???
88D9  67        ???
88DA  8f        ???
88DB  8f        ???
88DC  8f        ???
88DD  8f        ???
88DE  8f        ???
88DF  fb        ???
88E0  ab        ???
88E1  ab        ???
88E2  83        ???
88E3  83        ???
88E4  5b        ???
88E5  5b        ???
88E6  d3        ???
88E7  d3        ???
88E8  d3        ???
88E9  d3        ???
88EA  fb        ???
88EB  fb        ???
88EC  fb        ???
88ED  fb        ???
88EE  fb        ???
88EF  89        ???
88F0  8b        ???
88F1  8b        ???
88F2  8c 8c 8c  STY $8c8c
88F5  8c 8a 8a  STY $8a8a
88F8  8a        TXA
88F9  8a        TXA
88FA  89        ???
88FB  89        ???
88FC  89        ???
88FD  89        ???
88FE  89        ???
88FF  89        ???
8900  8b        ???
8901  8b        ???
8902  8c 8c 8d  STY $8d8c
8905  8d 8a 8a  STA $8a8a
8908  8a        TXA
8909  8a        TXA
890A  89        ???
890B  89        ???
890C  89        ???
890D  89        ???
890E  89        ???
890F  00        BRK
8910  00        BRK
8911  00        BRK
8912  00        BRK
8913  00        BRK
8914  00        BRK
8915  00        BRK
8916  00        BRK
8917  00        BRK
8918  00        BRK
8919  00        BRK
891A  00        BRK
891B  00        BRK
891C  00        BRK
891D  00        BRK
891E  00        BRK
891F  00        BRK
8920  00        BRK
8921  00        BRK
8922  00        BRK
8923  00        BRK
8924  00        BRK
8925  00        BRK
8926  00        BRK
8927  00        BRK
8928  00        BRK
8929  00        BRK
892A  00        BRK
892B  00        BRK
892C  00        BRK
892D  00        BRK
892E  00        BRK
892F  20 09 09  JSR $0909
8932  05 05     ORA $05
8934  05 05     ORA $05
8936  01 01     ORA ($01,X)
8938  01 01     ORA ($01,X)
893A  01 01     ORA ($01,X)
893C  01 01     ORA ($01,X)
893E  01 20     ORA ($20,X)
8940  09 09     ORA #$09
8942  05 05     ORA $05
8944  05 05     ORA $05
8946  01 01     ORA ($01,X)
8948  01 01     ORA ($01,X)
894A  01 01     ORA ($01,X)
894C  01 01     ORA ($01,X)
894E  01 8f     ORA ($8f,X)
8950  3f        ???
8951  3f        ???
8952  17        ???
8953  17        ???
8954  ef        ???
8955  ef        ???
8956  67        ???
8957  67        ???
8958  67        ???
8959  67        ???
895A  8f        ???
895B  8f        ???
895C  8f        ???
895D  8f        ???
895E  8f        ???
895F  fb        ???
8960  ab        ???
8961  ab        ???
8962  83        ???
8963  83        ???
8964  5b        ???
8965  5b        ???
8966  d3        ???
8967  d3        ???
8968  d3        ???
8969  d3        ???
896A  fb        ???
896B  fb        ???
896C  fb        ???
896D  fb        ???
896E  fb        ???
896F  89        ???
8970  8b        ???
8971  8b        ???
8972  8c 8c 8c  STY $8c8c
8975  8c 8a 8a  STY $8a8a
8978  8a        TXA
8979  8a        TXA
897A  89        ???
897B  89        ???
897C  89        ???
897D  89        ???
897E  89        ???
897F  89        ???
8980  8b        ???
8981  8b        ???
8982  8c 8c 8d  STY $8d8c
8985  8d 8a 8a  STA $8a8a
8988  8a        TXA
8989  8a        TXA
898A  89        ???
898B  89        ???
898C  89        ???
898D  89        ???
898E  89        ???
898F  00        BRK
8990  00        BRK
8991  00        BRK
8992  04        ???
8993  05 14     ORA $14
8995  14        ???
8996  12        ???
8997  0e 0a 00  ASL $000a
899A  00        BRK
899B  00        BRK
899C  00        BRK
899D  00        BRK
899E  00        BRK
899F  00        BRK
89A0  16 17     ASL $17,X
89A2  16 15     ASL $15,X
89A4  0f        ???
89A5  00        BRK
89A6  00        BRK
89A7  00        BRK
89A8  00        BRK
89A9  00        BRK
89AA  05 06     ORA $06
89AC  18        CLC
89AD  1b        ???
89AE  23        ???
89AF  23        ???
89B0  14        ???
89B1  00        BRK
89B2  00        BRK
89B3  03        ???
89B4  02        ???
89B5  00        BRK
89B6  00        BRK
89B7  00        BRK
89B8  19 1c 28  ORA $281c,Y
89BB  31 18     AND ($18),Y
89BD  00        BRK
89BE  00        BRK
89BF  04        ???
89C0  02        ???
89C1  01 06     ORA ($06,X)
89C3  07        ???
89C4  19 1c 28  ORA $281c,Y
89C7  32        ???
89C8  19 00 00  ORA $0000,Y
89CB  03        ???
89CC  02        ???
89CD  00        BRK
89CE  00        BRK
89CF  00        BRK
89D0  19 1c 28  ORA $281c,Y
89D3  31 18     AND ($18),Y
89D5  00        BRK
89D6  00        BRK
89D7  00        BRK
89D8  00        BRK
89D9  00        BRK
89DA  05 06     ORA $06
89DC  18        CLC
89DD  1b        ???
89DE  23        ???
89DF  23        ???
89E0  14        ???
89E1  00        BRK
89E2  00        BRK
89E3  00        BRK
89E4  00        BRK
89E5  00        BRK
89E6  00        BRK
89E7  00        BRK
89E8  16 18     ASL $18,X
89EA  16 15     ASL $15,X
89EC  0f        ???
89ED  00        BRK
89EE  00        BRK
89EF  00        BRK
89F0  00        BRK
89F1  00        BRK
89F2  04        ???
89F3  05 14     ORA $14
89F5  14        ???
89F6  12        ???
89F7  0e 0a 00  ASL $000a
89FA  00        BRK
89FB  0a        ASL A
89FC  0e 12 14  ASL $1412
89FF  14        ???
8A00  05 04     ORA $04
8A02  00        BRK
8A03  00        BRK
8A04  00        BRK
8A05  00        BRK
8A06  00        BRK
8A07  0f        ???
8A08  15 16     ORA $16,X
8A0A  17        ???
8A0B  16 00     ASL $00,X
8A0D  00        BRK
8A0E  00        BRK
8A0F  00        BRK
8A10  00        BRK
8A11  00        BRK
8A12  00        BRK
8A13  14        ???
8A14  23        ???
8A15  23        ???
8A16  1b        ???
8A17  18        CLC
8A18  06 05     ASL $05
8A1A  00        BRK
8A1B  00        BRK
8A1C  00        BRK
8A1D  00        BRK
8A1E  00        BRK
8A1F  18        CLC
8A20  31 28     AND ($28),Y
8A22  1c        ???
8A23  19 00 00  ORA $0000,Y
8A26  00        BRK
8A27  02        ???
8A28  03        ???
8A29  00        BRK
8A2A  00        BRK
8A2B  19 32 28  ORA $2832,Y
8A2E  1c        ???
8A2F  19 07 06  ORA $0607,Y
8A32  01 02     ORA ($02,X)
8A34  04        ???
8A35  00        BRK
8A36  00        BRK
8A37  18        CLC
8A38  31 28     AND ($28),Y
8A3A  1c        ???
8A3B  19 00 00  ORA $0000,Y
8A3E  00        BRK
8A3F  02        ???
8A40  03        ???
8A41  00        BRK
8A42  00        BRK
8A43  14        ???
8A44  23        ???
8A45  23        ???
8A46  1b        ???
8A47  18        CLC
8A48  06 05     ASL $05
8A4A  00        BRK
8A4B  00        BRK
8A4C  00        BRK
8A4D  00        BRK
8A4E  00        BRK
8A4F  0f        ???
8A50  15 16     ORA $16,X
8A52  17        ???
8A53  16 00     ASL $00,X
8A55  00        BRK
8A56  00        BRK
8A57  00        BRK
8A58  00        BRK
8A59  00        BRK
8A5A  00        BRK
8A5B  0a        ASL A
8A5C  0e 12 14  ASL $1412
8A5F  14        ???
8A60  05 04     ORA $04
8A62  00        BRK
8A63  00        BRK
8A64  00        BRK
8A65  00        BRK
8A66  00        BRK
8A67  00        BRK
8A68  00        BRK
8A69  25 00     AND $00
8A6B  00        BRK
8A6C  00        BRK
8A6D  00        BRK
8A6E  00        BRK
8A6F  00        BRK
8A70  00        BRK
8A71  00        BRK
8A72  00        BRK
8A73  00        BRK
8A74  00        BRK
8A75  00        BRK
8A76  00        BRK
8A77  00        BRK
8A78  00        BRK
8A79  00        BRK
8A7A  00        BRK
8A7B  00        BRK
8A7C  00        BRK
8A7D  00        BRK
8A7E  00        BRK
8A7F  26 00     ROL $00
8A81  00        BRK
8A82  00        BRK
8A83  26 00     ROL $00
8A85  00        BRK
8A86  00        BRK
8A87  00        BRK
8A88  00        BRK
8A89  00        BRK
8A8A  00        BRK
8A8B  25 00     AND $00
8A8D  25 00     AND $00
8A8F  00        BRK
8A90  00        BRK
8A91  00        BRK
8A92  00        BRK
8A93  00        BRK
8A94  00        BRK
8A95  00        BRK
8A96  00        BRK
8A97  00        BRK
8A98  26 27     ROL $27
8A9A  00        BRK
8A9B  00        BRK
8A9C  00        BRK
8A9D  00        BRK
8A9E  00        BRK
8A9F  00        BRK
8AA0  00        BRK
8AA1  00        BRK
8AA2  00        BRK
8AA3  25 00     AND $00
8AA5  25 00     AND $00
8AA7  00        BRK
8AA8  00        BRK
8AA9  00        BRK
8AAA  00        BRK
8AAB  00        BRK
8AAC  00        BRK
8AAD  00        BRK
8AAE  00        BRK
8AAF  26 00     ROL $00
8AB1  00        BRK
8AB2  00        BRK
8AB3  26 00     ROL $00
8AB5  00        BRK
8AB6  00        BRK
8AB7  00        BRK
8AB8  00        BRK
8AB9  00        BRK
8ABA  00        BRK
8ABB  00        BRK
8ABC  00        BRK
8ABD  00        BRK
8ABE  00        BRK
8ABF  00        BRK
8AC0  00        BRK
8AC1  00        BRK
8AC2  00        BRK
8AC3  00        BRK
8AC4  00        BRK
8AC5  00        BRK
8AC6  00        BRK
8AC7  00        BRK
8AC8  00        BRK
8AC9  25 00     AND $00
8ACB  00        BRK
8ACC  00        BRK
8ACD  00        BRK
8ACE  00        BRK
8ACF  00        BRK
8AD0  00        BRK
8AD1  00        BRK
8AD2  00        BRK
8AD3  00        BRK
8AD4  00        BRK
8AD5  00        BRK
8AD6  00        BRK
8AD7  00        BRK
8AD8  00        BRK
8AD9  00        BRK
8ADA  25 00     AND $00
8ADC  00        BRK
8ADD  00        BRK
8ADE  00        BRK
8ADF  00        BRK
8AE0  00        BRK
8AE1  00        BRK
8AE2  00        BRK
8AE3  00        BRK
8AE4  00        BRK
8AE5  00        BRK
8AE6  00        BRK
8AE7  00        BRK
8AE8  00        BRK
8AE9  00        BRK
8AEA  00        BRK
8AEB  00        BRK
8AEC  00        BRK
8AED  00        BRK
8AEE  00        BRK
8AEF  00        BRK
8AF0  26 00     ROL $00
8AF2  00        BRK
8AF3  00        BRK
8AF4  26 00     ROL $00
8AF6  00        BRK
8AF7  00        BRK
8AF8  00        BRK
8AF9  00        BRK
8AFA  00        BRK
8AFB  00        BRK
8AFC  00        BRK
8AFD  00        BRK
8AFE  25 00     AND $00
8B00  25 00     AND $00
8B02  00        BRK
8B03  00        BRK
8B04  00        BRK
8B05  00        BRK
8B06  00        BRK
8B07  00        BRK
8B08  00        BRK
8B09  00        BRK
8B0A  27        ???
8B0B  26 00     ROL $00
8B0D  00        BRK
8B0E  00        BRK
8B0F  00        BRK
8B10  00        BRK
8B11  00        BRK
8B12  00        BRK
8B13  00        BRK
8B14  00        BRK
8B15  00        BRK
8B16  25 00     AND $00
8B18  25 00     AND $00
8B1A  00        BRK
8B1B  00        BRK
8B1C  00        BRK
8B1D  00        BRK
8B1E  00        BRK
8B1F  00        BRK
8B20  26 00     ROL $00
8B22  00        BRK
8B23  00        BRK
8B24  26 00     ROL $00
8B26  00        BRK
8B27  00        BRK
8B28  00        BRK
8B29  00        BRK
8B2A  00        BRK
8B2B  00        BRK
8B2C  00        BRK
8B2D  00        BRK
8B2E  00        BRK
8B2F  00        BRK
8B30  00        BRK
8B31  00        BRK
8B32  00        BRK
8B33  00        BRK
8B34  00        BRK
8B35  00        BRK
8B36  00        BRK
8B37  00        BRK
8B38  00        BRK
8B39  00        BRK
8B3A  25 00     AND $00
8B3C  00        BRK
8B3D  00        BRK
8B3E  00        BRK
8B3F  dc        ???
8B40  e5 e4     SBC $e4
8B42  e3        ???
8B43  e8        INX
8B44  e7        ???
8B45  e8        INX
8B46  e8        INX
8B47  e8        INX
8B48  e7        ???
8B49  00        BRK
8B4A  00        BRK
8B4B  e6 e7     INC $e7
8B4D  e6 e5     INC $e5
8B4F  ea        NOP
8B50  e9 ea     SBC #$ea
8B52  e9 e9     SBC #$e9
8B54  e8        INX
8B55  00        BRK
8B56  00        BRK
8B57  e2        ???
8B58  e5 e4     SBC $e4
8B5A  e6 e9     INC $e9
8B5C  e8        INX
8B5D  ea        NOP
8B5E  e9 e9     SBC #$e9
8B60  e9 00     SBC #$00
8B62  00        BRK
8B63  e7        ???
8B64  e9 e8     SBC #$e8
8B66  e8        INX
8B67  eb        ???
8B68  ea        NOP
8B69  eb        ???
8B6A  ea        NOP
8B6B  eb        ???
8B6C  ea        NOP
8B6D  00        BRK
8B6E  00        BRK
8B6F  e1 e3     SBC ($e3,X)
8B71  e5 e8     SBC $e8
8B73  eb        ???
8B74  ea        NOP
8B75  eb        ???
8B76  eb        ???
8B77  ed ea 00  SBC $00ea
8B7A  00        BRK
8B7B  e7        ???
8B7C  e9 e8     SBC #$e8
8B7E  e8        INX
8B7F  eb        ???
8B80  ea        NOP
8B81  eb        ???
8B82  ea        NOP
8B83  eb        ???
8B84  ea        NOP
8B85  00        BRK
8B86  00        BRK
8B87  e2        ???
8B88  e5 e4     SBC $e4
8B8A  e6 e9     INC $e9
8B8C  e8        INX
8B8D  ea        NOP
8B8E  e9 e9     SBC #$e9
8B90  e9 00     SBC #$00
8B92  00        BRK
8B93  e6 e7     INC $e7
8B95  e6 e5     INC $e5
8B97  ea        NOP
8B98  e9 ea     SBC #$ea
8B9A  e9 e9     SBC #$e9
8B9C  e8        INX
8B9D  00        BRK
8B9E  00        BRK
8B9F  dc        ???
8BA0  e5 e4     SBC $e4
8BA2  e3        ???
8BA3  e8        INX
8BA4  e7        ???
8BA5  e8        INX
8BA6  e8        INX
8BA7  e8        INX
8BA8  e7        ???
8BA9  00        BRK
8BAA  00        BRK
8BAB  e7        ???
8BAC  e8        INX
8BAD  e8        INX
8BAE  e8        INX
8BAF  e7        ???
8BB0  e8        INX
8BB1  e3        ???
8BB2  e4 e5     CPX $e5
8BB4  dc        ???
8BB5  00        BRK
8BB6  00        BRK
8BB7  e8        INX
8BB8  e9 e9     SBC #$e9
8BBA  ea        NOP
8BBB  e9 ea     SBC #$ea
8BBD  e5 e6     SBC $e6
8BBF  e7        ???
8BC0  e6 00     INC $00
8BC2  00        BRK
8BC3  e9 e9     SBC #$e9
8BC5  e9 ea     SBC #$ea
8BC7  e8        INX
8BC8  e9 e6     SBC #$e6
8BCA  e4 e5     CPX $e5
8BCC  e2        ???
8BCD  00        BRK
8BCE  00        BRK
8BCF  ea        NOP
8BD0  eb        ???
8BD1  ea        NOP
8BD2  eb        ???
8BD3  ea        NOP
8BD4  eb        ???
8BD5  e8        INX
8BD6  e8        INX
8BD7  e9 e7     SBC #$e7
8BD9  00        BRK
8BDA  00        BRK
8BDB  ea        NOP
8BDC  ed eb eb  SBC $ebeb
8BDF  ea        NOP
8BE0  eb        ???
8BE1  e8        INX
8BE2  e5 e3     SBC $e3
8BE4  e1 00     SBC ($00,X)
8BE6  00        BRK
8BE7  ea        NOP
8BE8  eb        ???
8BE9  ea        NOP
8BEA  eb        ???
8BEB  ea        NOP
8BEC  eb        ???
8BED  e8        INX
8BEE  e8        INX
8BEF  e9 e7     SBC #$e7
8BF1  00        BRK
8BF2  00        BRK
8BF3  e9 e9     SBC #$e9
8BF5  e9 ea     SBC #$ea
8BF7  e8        INX
8BF8  e9 e6     SBC #$e6
8BFA  e4 e5     CPX $e5
8BFC  e2        ???
8BFD  00        BRK
8BFE  00        BRK
8BFF  e8        INX
8C00  e9 e9     SBC #$e9
8C02  ea        NOP
8C03  e9 ea     SBC #$ea
8C05  e5 e6     SBC $e6
8C07  e7        ???
8C08  e6 00     INC $00
8C0A  00        BRK
8C0B  e7        ???
8C0C  e8        INX
8C0D  e8        INX
8C0E  e8        INX
8C0F  e7        ???
8C10  e8        INX
8C11  e3        ???
8C12  e4 e5     CPX $e5
8C14  dc        ???
8C15  00        BRK
8C16  00        BRK
8C17  6b        ???
8C18  6c 6d 6c  JMP ($6c6d)
8C1B  6c 6b 6c  JMP ($6c6b)
8C1E  6c 6c 6c  JMP ($6c6c)
8C21  00        BRK
8C22  00        BRK
8C23  6c 6d 6d  JMP ($6d6d)
8C26  6c 6c 6b  JMP ($6b6c)
8C29  6b        ???
8C2A  6b        ???
8C2B  6b        ???
8C2C  6b        ???
8C2D  00        BRK
8C2E  00        BRK
8C2F  6c 6d 6d  JMP ($6d6d)
8C32  6c 6c 6b  JMP ($6b6c)
8C35  6b        ???
8C36  6b        ???
8C37  6b        ???
8C38  6b        ???
8C39  00        BRK
8C3A  00        BRK
8C3B  6c 6d 6f  JMP ($6f6d)
8C3E  6e 6e 6d  ROR $6d6e
8C41  6c 6b 6a  JMP ($6a6b)
8C44  6a        ROR A
8C45  00        BRK
8C46  00        BRK
8C47  6d 6c 77  ADC $776c
8C4A  6f        ???
8C4B  6f        ???
8C4C  6e 6e 6c  ROR $6c6e
8C4F  6a        ROR A
8C50  69 00     ADC #$00
8C52  00        BRK
8C53  6c 6d 6f  JMP ($6f6d)
8C56  6e 6e 6d  ROR $6d6e
8C59  6c 6b 6a  JMP ($6a6b)
8C5C  6a        ROR A
8C5D  00        BRK
8C5E  00        BRK
8C5F  6c 6d 6d  JMP ($6d6d)
8C62  6c 6c 6b  JMP ($6b6c)
8C65  6b        ???
8C66  6b        ???
8C67  6b        ???
8C68  6b        ???
8C69  00        BRK
8C6A  00        BRK
8C6B  6c 6d 6d  JMP ($6d6d)
8C6E  6c 6c 6b  JMP ($6b6c)
8C71  6b        ???
8C72  6b        ???
8C73  6b        ???
8C74  6b        ???
8C75  00        BRK
8C76  00        BRK
8C77  6b        ???
8C78  6c 6d 6c  JMP ($6c6d)
8C7B  6c 6b 6c  JMP ($6c6b)
8C7E  6c 6c 6c  JMP ($6c6c)
8C81  00        BRK
8C82  00        BRK
8C83  6c 6c 6c  JMP ($6c6c)
8C86  6c 6b 6c  JMP ($6c6b)
8C89  6c 6d 6c  JMP ($6c6d)
8C8C  6b        ???
8C8D  00        BRK
8C8E  00        BRK
8C8F  6b        ???
8C90  6b        ???
8C91  6b        ???
8C92  6b        ???
8C93  6b        ???
8C94  6c 6c 6d  JMP ($6d6c)
8C97  6d 6c 00  ADC $006c
8C9A  00        BRK
8C9B  6b        ???
8C9C  6b        ???
8C9D  6b        ???
8C9E  6b        ???
8C9F  6b        ???
8CA0  6c 6c 6d  JMP ($6d6c)
8CA3  6d 6c 00  ADC $006c
8CA6  00        BRK
8CA7  6a        ROR A
8CA8  6a        ROR A
8CA9  6b        ???
8CAA  6c 6d 6e  JMP ($6e6d)
8CAD  6e 6f 6d  ROR $6d6f
8CB0  6c 00 00  JMP ($0000)
8CB3  69 6a     ADC #$6a
8CB5  6c 6e 6e  JMP ($6e6e)
8CB8  6f        ???
8CB9  6f        ???
8CBA  77        ???
8CBB  6c 6d 00  JMP ($006d)
8CBE  00        BRK
8CBF  6a        ROR A
8CC0  6a        ROR A
8CC1  6b        ???
8CC2  6c 6d 6e  JMP ($6e6d)
8CC5  6e 6f 6d  ROR $6d6f
8CC8  6c 00 00  JMP ($0000)
8CCB  6b        ???
8CCC  6b        ???
8CCD  6b        ???
8CCE  6b        ???
8CCF  6b        ???
8CD0  6c 6c 6d  JMP ($6d6c)
8CD3  6d 6c 00  ADC $006c
8CD6  00        BRK
8CD7  6b        ???
8CD8  6b        ???
8CD9  6b        ???
8CDA  6b        ???
8CDB  6b        ???
8CDC  6c 6c 6d  JMP ($6d6c)
8CDF  6d 6c 00  ADC $006c
8CE2  00        BRK
8CE3  6c 6c 6c  JMP ($6c6c)
8CE6  6c 6b 6c  JMP ($6c6b)
8CE9  6c 6d 6c  JMP ($6c6d)
8CEC  6b        ???
8CED  00        BRK
8CEE  00        BRK
8CEF  5a        ???
8CF0  62        ???
8CF1  68        PLA
8CF2  67        ???
8CF3  6c 6b 6d  JMP ($6d6b)
8CF6  71 6e     ADC ($6e),Y
8CF8  6e 00 00  ROR $0000
8CFB  60        RTS
8CFC  65 67     ADC $67
8CFE  6b        ???
8CFF  6e 71 78  ROR $7871
8D02  74        ???
8D03  75 71     ADC $71,X
8D05  00        BRK
8D06  00        BRK
8D07  62        ???
8D08  66 6a     ROR $6a
8D0A  6c 70 75  JMP ($7570)
8D0D  72        ???
8D0E  76 7a     ROR $7a,X
8D10  72        ???
8D11  00        BRK
8D12  00        BRK
8D13  5e 69 69  LSR $6969,X
8D16  6c 70 73  JMP ($7370)
8D19  7a        ???
8D1A  7a        ???
8D1B  75 71     ADC $71,X
8D1D  00        BRK
8D1E  00        BRK
8D1F  5a        ???
8D20  4e 69 70  LSR $7069
8D23  73        ???
8D24  76 73     ROR $73,X
8D26  79 72 70  ADC $7072,Y
8D29  00        BRK
8D2A  00        BRK
8D2B  5e 69 69  LSR $6969,X
8D2E  6c 70 73  JMP ($7370)
8D31  7a        ???
8D32  7a        ???
8D33  75 71     ADC $71,X
8D35  00        BRK
8D36  00        BRK
8D37  62        ???
8D38  66 6a     ROR $6a
8D3A  6c 70 75  JMP ($7570)
8D3D  72        ???
8D3E  76 7a     ROR $7a,X
8D40  72        ???
8D41  00        BRK
8D42  00        BRK
8D43  60        RTS
8D44  65 67     ADC $67
8D46  6b        ???
8D47  6e 71 78  ROR $7871
8D4A  74        ???
8D4B  75 71     ADC $71,X
8D4D  00        BRK
8D4E  00        BRK
8D4F  5a        ???
8D50  62        ???
8D51  68        PLA
8D52  67        ???
8D53  6c 6b 6d  JMP ($6d6b)
8D56  71 6e     ADC ($6e),Y
8D58  6e 00 00  ROR $0000
8D5B  6e 6e 71  ROR $716e
8D5E  6d 6b 6c  ADC $6c6b
8D61  67        ???
8D62  68        PLA
8D63  62        ???
8D64  5a        ???
8D65  00        BRK
8D66  00        BRK
8D67  71 75     ADC ($75),Y
8D69  74        ???
8D6A  78        SEI
8D6B  71 6e     ADC ($6e),Y
8D6D  6b        ???
8D6E  67        ???
8D6F  65 60     ADC $60
8D71  00        BRK
8D72  00        BRK
8D73  72        ???
8D74  7a        ???
8D75  76 72     ROR $72,X
8D77  75 70     ADC $70,X
8D79  6c 6a 66  JMP ($666a)
8D7C  62        ???
8D7D  00        BRK
8D7E  00        BRK
8D7F  71 75     ADC ($75),Y
8D81  7a        ???
8D82  7a        ???
8D83  73        ???
8D84  70 6c     BVS $8df2
8D86  69 69     ADC #$69
8D88  5e 00 00  LSR $0000,X
8D8B  70 72     BVS $8dff
8D8D  79 73 76  ADC $7673,Y
8D90  73        ???
8D91  70 69     BVS $8dfc
8D93  4e 5a 00  LSR $005a
8D96  00        BRK
8D97  71 75     ADC ($75),Y
8D99  7a        ???
8D9A  7a        ???
8D9B  73        ???
8D9C  70 6c     BVS $8e0a
8D9E  69 69     ADC #$69
8DA0  5e 00 00  LSR $0000,X
8DA3  72        ???
8DA4  7a        ???
8DA5  76 72     ROR $72,X
8DA7  75 70     ADC $70,X
8DA9  6c 6a 66  JMP ($666a)
8DAC  62        ???
8DAD  00        BRK
8DAE  00        BRK
8DAF  71 75     ADC ($75),Y
8DB1  74        ???
8DB2  78        SEI
8DB3  71 6e     ADC ($6e),Y
8DB5  6b        ???
8DB6  67        ???
8DB7  65 60     ADC $60
8DB9  00        BRK
8DBA  00        BRK
8DBB  6e 6e 71  ROR $716e
8DBE  6d 6b 6c  ADC $6c6b
8DC1  67        ???
8DC2  68        PLA
8DC3  62        ???
8DC4  5a        ???
8DC5  00        BRK
8DC6  00        BRK
8DC7  86 c1     STX $c1
8DC9  a5 a3     LDA $a3
8DCB  30 1c     BMI $8de9
8DCD  85 c0     STA $c0
8DCF  ad 4f 81  LDA $814f
8DD2  3d 60 81  AND $8160,X
8DD5  d0 12     BNE $8de9
8DD7  8a        TXA
8DD8  38        SEC
8DD9  e5 c0     SBC $c0
8DDB  a8        TAY
8DDC  ad d9 81  LDA $81d9
8DDF  39 54 82  AND $8254,Y
8DE2  d0 05     BNE $8de9
8DE4  20 5b b2  JSR $b25b
8DE7  a6 c1     LDX $c1
8DE9  a5 a2     LDA $a2
8DEB  30 1c     BMI $8e09
8DED  85 c0     STA $c0
8DEF  ad 4e 81  LDA $814e
8DF2  3d 60 81  AND $8160,X
8DF5  d0 12     BNE $8e09
8DF7  8a        TXA
8DF8  38        SEC
8DF9  e5 c0     SBC $c0
8DFB  a8        TAY
8DFC  ad d8 81  LDA $81d8
8DFF  39 54 82  AND $8254,Y
8E02  d0 05     BNE $8e09
8E04  20 5b b2  JSR $b25b
8E07  a6 c1     LDX $c1
8E09  a5 a1     LDA $a1
8E0B  30 1c     BMI $8e29
8E0D  85 c0     STA $c0
8E0F  ad 4d 81  LDA $814d
8E12  3d 60 81  AND $8160,X
8E15  d0 12     BNE $8e29
8E17  8a        TXA
8E18  38        SEC
8E19  e5 c0     SBC $c0
8E1B  a8        TAY
8E1C  ad d7 81  LDA $81d7
8E1F  39 54 82  AND $8254,Y
8E22  d0 05     BNE $8e29
8E24  20 5b b2  JSR $b25b
8E27  a6 c1     LDX $c1
8E29  a5 a0     LDA $a0
8E2B  30 1c     BMI $8e49
8E2D  85 c0     STA $c0
8E2F  ad 4c 81  LDA $814c
8E32  3d 60 81  AND $8160,X
8E35  d0 12     BNE $8e49
8E37  8a        TXA
8E38  38        SEC
8E39  e5 c0     SBC $c0
8E3B  a8        TAY
8E3C  ad d6 81  LDA $81d6
8E3F  39 54 82  AND $8254,Y
8E42  d0 05     BNE $8e49
8E44  20 5b b2  JSR $b25b
8E47  a6 c1     LDX $c1
8E49  a5 9f     LDA $9f
8E4B  30 1c     BMI $8e69
8E4D  85 c0     STA $c0
8E4F  ad 4b 81  LDA $814b
8E52  3d 60 81  AND $8160,X
8E55  d0 12     BNE $8e69
8E57  8a        TXA
8E58  38        SEC
8E59  e5 c0     SBC $c0
8E5B  a8        TAY
8E5C  ad d5 81  LDA $81d5
8E5F  39 54 82  AND $8254,Y
8E62  d0 05     BNE $8e69
8E64  20 5b b2  JSR $b25b
8E67  a6 c1     LDX $c1
8E69  a5 9e     LDA $9e
8E6B  30 28     BMI $8e95
8E6D  85 c0     STA $c0
8E6F  ad 4a 81  LDA $814a
8E72  3d 60 81  AND $8160,X
8E75  d0 1e     BNE $8e95
8E77  8a        TXA
8E78  38        SEC
8E79  e5 c0     SBC $c0
8E7B  a8        TAY
8E7C  ad d4 81  LDA $81d4
8E7F  39 54 82  AND $8254,Y
8E82  d0 11     BNE $8e95
8E84  b9 54 84  LDA $8454,Y
8E87  18        CLC
8E88  65 c0     ADC $c0
8E8A  a8        TAY
8E8B  b9 00 00  LDA $0000,Y
8E8E  d0 05     BNE $8e95
8E90  20 5b b2  JSR $b25b
8E93  a6 c1     LDX $c1
8E95  a5 9d     LDA $9d
8E97  30 28     BMI $8ec1
8E99  85 c0     STA $c0
8E9B  ad 49 81  LDA $8149
8E9E  3d 60 81  AND $8160,X
8EA1  d0 1e     BNE $8ec1
8EA3  8a        TXA
8EA4  38        SEC
8EA5  e5 c0     SBC $c0
8EA7  a8        TAY
8EA8  ad d3 81  LDA $81d3
8EAB  39 54 82  AND $8254,Y
8EAE  d0 11     BNE $8ec1
8EB0  b9 54 84  LDA $8454,Y
8EB3  18        CLC
8EB4  65 c0     ADC $c0
8EB6  a8        TAY
8EB7  b9 00 00  LDA $0000,Y
8EBA  d0 05     BNE $8ec1
8EBC  20 5b b2  JSR $b25b
8EBF  a6 c1     LDX $c1
8EC1  a5 9c     LDA $9c
8EC3  30 1c     BMI $8ee1
8EC5  85 c0     STA $c0
8EC7  ad 48 81  LDA $8148
8ECA  3d 60 81  AND $8160,X
8ECD  d0 12     BNE $8ee1
8ECF  8a        TXA
8ED0  38        SEC
8ED1  e5 c0     SBC $c0
8ED3  a8        TAY
8ED4  ad d2 81  LDA $81d2
8ED7  39 54 82  AND $8254,Y
8EDA  d0 05     BNE $8ee1
8EDC  20 5b b2  JSR $b25b
8EDF  a6 c1     LDX $c1
8EE1  a5 9b     LDA $9b
8EE3  30 1c     BMI $8f01
8EE5  85 c0     STA $c0
8EE7  ad 47 81  LDA $8147
8EEA  3d 60 81  AND $8160,X
8EED  d0 12     BNE $8f01
8EEF  8a        TXA
8EF0  38        SEC
8EF1  e5 c0     SBC $c0
8EF3  a8        TAY
8EF4  ad d1 81  LDA $81d1
8EF7  39 54 82  AND $8254,Y
8EFA  d0 05     BNE $8f01
8EFC  20 5b b2  JSR $b25b
8EFF  a6 c1     LDX $c1
8F01  a5 9a     LDA $9a
8F03  30 20     BMI $8f25
8F05  85 c0     STA $c0
8F07  8a        TXA
8F08  38        SEC
8F09  e5 c0     SBC $c0
8F0B  a8        TAY
8F0C  ad d0 81  LDA $81d0
8F0F  39 54 82  AND $8254,Y
8F12  d0 11     BNE $8f25
8F14  b9 54 84  LDA $8454,Y
8F17  18        CLC
8F18  65 c0     ADC $c0
8F1A  a8        TAY
8F1B  b9 00 00  LDA $0000,Y
8F1E  d0 05     BNE $8f25
8F20  20 5b b2  JSR $b25b
8F23  a6 c1     LDX $c1
8F25  a5 99     LDA $99
8F27  30 20     BMI $8f49
8F29  85 c0     STA $c0
8F2B  8a        TXA
8F2C  38        SEC
8F2D  e5 c0     SBC $c0
8F2F  a8        TAY
8F30  ad cf 81  LDA $81cf
8F33  39 54 82  AND $8254,Y
8F36  d0 11     BNE $8f49
8F38  b9 54 84  LDA $8454,Y
8F3B  18        CLC
8F3C  65 c0     ADC $c0
8F3E  a8        TAY
8F3F  b9 00 00  LDA $0000,Y
8F42  d0 05     BNE $8f49
8F44  20 5b b2  JSR $b25b
8F47  a6 c1     LDX $c1
8F49  a5 98     LDA $98
8F4B  30 2b     BMI $8f78
8F4D  85 c0     STA $c0
8F4F  38        SEC
8F50  e5 c1     SBC $c1
8F52  a8        TAY
8F53  ad ce 81  LDA $81ce
8F56  39 54 82  AND $8254,Y
8F59  d0 1d     BNE $8f78
8F5B  8a        TXA
8F5C  18        CLC
8F5D  79 54 84  ADC $8454,Y
8F60  aa        TAX
8F61  b5 00     LDA $00,X
8F63  f0 f6     BEQ $8f5b
8F65  8a        TXA
8F66  18        CLC
8F67  79 54 84  ADC $8454,Y
8F6A  aa        TAX
8F6B  b5 00     LDA $00,X
8F6D  f0 f6     BEQ $8f65
8F6F  e4 c0     CPX $c0
8F71  d0 03     BNE $8f76
8F73  20 5b b2  JSR $b25b
8F76  a6 c1     LDX $c1
8F78  a5 97     LDA $97
8F7A  30 2b     BMI $8fa7
8F7C  85 c0     STA $c0
8F7E  38        SEC
8F7F  e5 c1     SBC $c1
8F81  a8        TAY
8F82  ad cd 81  LDA $81cd
8F85  39 54 82  AND $8254,Y
8F88  d0 1d     BNE $8fa7
8F8A  8a        TXA
8F8B  18        CLC
8F8C  79 54 84  ADC $8454,Y
8F8F  aa        TAX
8F90  b5 00     LDA $00,X
8F92  f0 f6     BEQ $8f8a
8F94  8a        TXA
8F95  18        CLC
8F96  79 54 84  ADC $8454,Y
8F99  aa        TAX
8F9A  b5 00     LDA $00,X
8F9C  f0 f6     BEQ $8f94
8F9E  e4 c0     CPX $c0
8FA0  d0 03     BNE $8fa5
8FA2  20 5b b2  JSR $b25b
8FA5  a6 c1     LDX $c1
8FA7  a5 96     LDA $96
8FA9  30 21     BMI $8fcc
8FAB  85 c0     STA $c0
8FAD  38        SEC
8FAE  e5 c1     SBC $c1
8FB0  a8        TAY
8FB1  ad cc 81  LDA $81cc
8FB4  39 54 82  AND $8254,Y
8FB7  d0 13     BNE $8fcc
8FB9  8a        TXA
8FBA  18        CLC
8FBB  79 54 84  ADC $8454,Y
8FBE  aa        TAX
8FBF  b5 00     LDA $00,X
8FC1  f0 f6     BEQ $8fb9
8FC3  e4 c0     CPX $c0
8FC5  d0 03     BNE $8fca
8FC7  20 5b b2  JSR $b25b
8FCA  a6 c1     LDX $c1
8FCC  a5 95     LDA $95
8FCE  30 21     BMI $8ff1
8FD0  85 c0     STA $c0
8FD2  38        SEC
8FD3  e5 c1     SBC $c1
8FD5  a8        TAY
8FD6  ad cb 81  LDA $81cb
8FD9  39 54 82  AND $8254,Y
8FDC  d0 13     BNE $8ff1
8FDE  8a        TXA
8FDF  18        CLC
8FE0  79 54 84  ADC $8454,Y
8FE3  aa        TAX
8FE4  b5 00     LDA $00,X
8FE6  f0 f6     BEQ $8fde
8FE8  e4 c0     CPX $c0
8FEA  d0 03     BNE $8fef
8FEC  20 5b b2  JSR $b25b
8FEF  a6 c1     LDX $c1
8FF1  a5 94     LDA $94
8FF3  30 43     BMI $9038
8FF5  85 c0     STA $c0
8FF7  b5 00     LDA $00,X
8FF9  29 0f     AND #$0f
8FFB  d0 21     BNE $901e
8FFD  8a        TXA
8FFE  38        SEC
8FFF  e5 c0     SBC $c0
9001  a8        TAY
9002  ad ca 81  LDA $81ca
9005  39 54 82  AND $8254,Y
9008  d0 2e     BNE $9038
900A  8a        TXA
900B  38        SEC
900C  f9 54 84  SBC $8454,Y
900F  aa        TAX
9010  b5 00     LDA $00,X
9012  f0 f6     BEQ $900a
9014  e4 c0     CPX $c0
9016  d0 1e     BNE $9036
9018  20 5b b2  JSR $b25b
901B  4c 36 90  JMP $9036
901E  ad 40 81  LDA $8140
9021  3d 60 81  AND $8160,X
9024  d0 12     BNE $9038
9026  8a        TXA
9027  38        SEC
9028  e5 c0     SBC $c0
902A  a8        TAY
902B  ad ca 81  LDA $81ca
902E  39 54 82  AND $8254,Y
9031  d0 05     BNE $9038
9033  20 5b b2  JSR $b25b
9036  a6 c1     LDX $c1
9038  60        RTS
9039  bd 20 86  LDA $8620,X
903C  c1 a5     CMP ($a5,X)
903E  b3        ???
903F  30 1c     BMI $905d
9041  85 c0     STA $c0
9043  ad 5f 81  LDA $815f
9046  3d 60 81  AND $8160,X
9049  d0 12     BNE $905d
904B  8a        TXA
904C  38        SEC
904D  e5 c0     SBC $c0
904F  a8        TAY
9050  ad e9 81  LDA $81e9
9053  39 54 82  AND $8254,Y
9056  d0 05     BNE $905d
9058  20 e3 b5  JSR $b5e3
905B  a6 c1     LDX $c1
905D  a5 b2     LDA $b2
905F  30 1c     BMI $907d
9061  85 c0     STA $c0
9063  ad 5e 81  LDA $815e
9066  3d 60 81  AND $8160,X
9069  d0 12     BNE $907d
906B  8a        TXA
906C  38        SEC
906D  e5 c0     SBC $c0
906F  a8        TAY
9070  ad e8 81  LDA $81e8
9073  39 54 82  AND $8254,Y
9076  d0 05     BNE $907d
9078  20 e3 b5  JSR $b5e3
907B  a6 c1     LDX $c1
907D  a5 b1     LDA $b1
907F  30 1c     BMI $909d
9081  85 c0     STA $c0
9083  ad 5d 81  LDA $815d
9086  3d 60 81  AND $8160,X
9089  d0 12     BNE $909d
908B  8a        TXA
908C  38        SEC
908D  e5 c0     SBC $c0
908F  a8        TAY
9090  ad e7 81  LDA $81e7
9093  39 54 82  AND $8254,Y
9096  d0 05     BNE $909d
9098  20 e3 b5  JSR $b5e3
909B  a6 c1     LDX $c1
909D  a5 b0     LDA $b0
909F  30 1c     BMI $90bd
90A1  85 c0     STA $c0
90A3  ad 5c 81  LDA $815c
90A6  3d 60 81  AND $8160,X
90A9  d0 12     BNE $90bd
90AB  8a        TXA
90AC  38        SEC
90AD  e5 c0     SBC $c0
90AF  a8        TAY
90B0  ad e6 81  LDA $81e6
90B3  39 54 82  AND $8254,Y
90B6  d0 05     BNE $90bd
90B8  20 e3 b5  JSR $b5e3
90BB  a6 c1     LDX $c1
90BD  a5 af     LDA $af
90BF  30 1c     BMI $90dd
90C1  85 c0     STA $c0
90C3  ad 5b 81  LDA $815b
90C6  3d 60 81  AND $8160,X
90C9  d0 12     BNE $90dd
90CB  8a        TXA
90CC  38        SEC
90CD  e5 c0     SBC $c0
90CF  a8        TAY
90D0  ad e5 81  LDA $81e5
90D3  39 54 82  AND $8254,Y
90D6  d0 05     BNE $90dd
90D8  20 e3 b5  JSR $b5e3
90DB  a6 c1     LDX $c1
90DD  a5 ae     LDA $ae
90DF  30 28     BMI $9109
90E1  85 c0     STA $c0
90E3  ad 5a 81  LDA $815a
90E6  3d 60 81  AND $8160,X
90E9  d0 1e     BNE $9109
90EB  8a        TXA
90EC  38        SEC
90ED  e5 c0     SBC $c0
90EF  a8        TAY
90F0  ad e4 81  LDA $81e4
90F3  39 54 82  AND $8254,Y
90F6  d0 11     BNE $9109
90F8  b9 54 84  LDA $8454,Y
90FB  18        CLC
90FC  65 c0     ADC $c0
90FE  a8        TAY
90FF  b9 00 00  LDA $0000,Y
9102  d0 05     BNE $9109
9104  20 e3 b5  JSR $b5e3
9107  a6 c1     LDX $c1
9109  a5 ad     LDA $ad
910B  30 28     BMI $9135
910D  85 c0     STA $c0
910F  ad 59 81  LDA $8159
9112  3d 60 81  AND $8160,X
9115  d0 1e     BNE $9135
9117  8a        TXA
9118  38        SEC
9119  e5 c0     SBC $c0
911B  a8        TAY
911C  ad e3 81  LDA $81e3
911F  39 54 82  AND $8254,Y
9122  d0 11     BNE $9135
9124  b9 54 84  LDA $8454,Y
9127  18        CLC
9128  65 c0     ADC $c0
912A  a8        TAY
912B  b9 00 00  LDA $0000,Y
912E  d0 05     BNE $9135
9130  20 e3 b5  JSR $b5e3
9133  a6 c1     LDX $c1
9135  a5 ac     LDA $ac
9137  30 1c     BMI $9155
9139  85 c0     STA $c0
913B  ad 58 81  LDA $8158
913E  3d 60 81  AND $8160,X
9141  d0 12     BNE $9155
9143  8a        TXA
9144  38        SEC
9145  e5 c0     SBC $c0
9147  a8        TAY
9148  ad e2 81  LDA $81e2
914B  39 54 82  AND $8254,Y
914E  d0 05     BNE $9155
9150  20 e3 b5  JSR $b5e3
9153  a6 c1     LDX $c1
9155  a5 ab     LDA $ab
9157  30 1c     BMI $9175
9159  85 c0     STA $c0
915B  ad 57 81  LDA $8157
915E  3d 60 81  AND $8160,X
9161  d0 12     BNE $9175
9163  8a        TXA
9164  38        SEC
9165  e5 c0     SBC $c0
9167  a8        TAY
9168  ad e1 81  LDA $81e1
916B  39 54 82  AND $8254,Y
916E  d0 05     BNE $9175
9170  20 e3 b5  JSR $b5e3
9173  a6 c1     LDX $c1
9175  a5 aa     LDA $aa
9177  30 20     BMI $9199
9179  85 c0     STA $c0
917B  8a        TXA
917C  38        SEC
917D  e5 c0     SBC $c0
917F  a8        TAY
9180  ad e0 81  LDA $81e0
9183  39 54 82  AND $8254,Y
9186  d0 11     BNE $9199
9188  b9 54 84  LDA $8454,Y
918B  18        CLC
918C  65 c0     ADC $c0
918E  a8        TAY
918F  b9 00 00  LDA $0000,Y
9192  d0 05     BNE $9199
9194  20 e3 b5  JSR $b5e3
9197  a6 c1     LDX $c1
9199  a5 a9     LDA $a9
919B  30 20     BMI $91bd
919D  85 c0     STA $c0
919F  8a        TXA
91A0  38        SEC
91A1  e5 c0     SBC $c0
91A3  a8        TAY
91A4  ad df 81  LDA $81df
91A7  39 54 82  AND $8254,Y
91AA  d0 11     BNE $91bd
91AC  b9 54 84  LDA $8454,Y
91AF  18        CLC
91B0  65 c0     ADC $c0
91B2  a8        TAY
91B3  b9 00 00  LDA $0000,Y
91B6  d0 05     BNE $91bd
91B8  20 e3 b5  JSR $b5e3
91BB  a6 c1     LDX $c1
91BD  a5 a8     LDA $a8
91BF  30 2b     BMI $91ec
91C1  85 c0     STA $c0
91C3  38        SEC
91C4  e5 c1     SBC $c1
91C6  a8        TAY
91C7  ad de 81  LDA $81de
91CA  39 54 82  AND $8254,Y
91CD  d0 1d     BNE $91ec
91CF  8a        TXA
91D0  18        CLC
91D1  79 54 84  ADC $8454,Y
91D4  aa        TAX
91D5  b5 00     LDA $00,X
91D7  f0 f6     BEQ $91cf
91D9  8a        TXA
91DA  18        CLC
91DB  79 54 84  ADC $8454,Y
91DE  aa        TAX
91DF  b5 00     LDA $00,X
91E1  f0 f6     BEQ $91d9
91E3  e4 c0     CPX $c0
91E5  d0 03     BNE $91ea
91E7  20 e3 b5  JSR $b5e3
91EA  a6 c1     LDX $c1
91EC  a5 a7     LDA $a7
91EE  30 2b     BMI $921b
91F0  85 c0     STA $c0
91F2  38        SEC
91F3  e5 c1     SBC $c1
91F5  a8        TAY
91F6  ad dd 81  LDA $81dd
91F9  39 54 82  AND $8254,Y
91FC  d0 1d     BNE $921b
91FE  8a        TXA
91FF  18        CLC
9200  79 54 84  ADC $8454,Y
9203  aa        TAX
9204  b5 00     LDA $00,X
9206  f0 f6     BEQ $91fe
9208  8a        TXA
9209  18        CLC
920A  79 54 84  ADC $8454,Y
920D  aa        TAX
920E  b5 00     LDA $00,X
9210  f0 f6     BEQ $9208
9212  e4 c0     CPX $c0
9214  d0 03     BNE $9219
9216  20 e3 b5  JSR $b5e3
9219  a6 c1     LDX $c1
921B  a5 a6     LDA $a6
921D  30 21     BMI $9240
921F  85 c0     STA $c0
9221  38        SEC
9222  e5 c1     SBC $c1
9224  a8        TAY
9225  ad dc 81  LDA $81dc
9228  39 54 82  AND $8254,Y
922B  d0 13     BNE $9240
922D  8a        TXA
922E  18        CLC
922F  79 54 84  ADC $8454,Y
9232  aa        TAX
9233  b5 00     LDA $00,X
9235  f0 f6     BEQ $922d
9237  e4 c0     CPX $c0
9239  d0 03     BNE $923e
923B  20 e3 b5  JSR $b5e3
923E  a6 c1     LDX $c1
9240  a5 a5     LDA $a5
9242  30 21     BMI $9265
9244  85 c0     STA $c0
9246  38        SEC
9247  e5 c1     SBC $c1
9249  a8        TAY
924A  ad db 81  LDA $81db
924D  39 54 82  AND $8254,Y
9250  d0 13     BNE $9265
9252  8a        TXA
9253  18        CLC
9254  79 54 84  ADC $8454,Y
9257  aa        TAX
9258  b5 00     LDA $00,X
925A  f0 f6     BEQ $9252
925C  e4 c0     CPX $c0
925E  d0 03     BNE $9263
9260  20 e3 b5  JSR $b5e3
9263  a6 c1     LDX $c1
9265  a5 a4     LDA $a4
9267  30 43     BMI $92ac
9269  85 c0     STA $c0
926B  b5 00     LDA $00,X
926D  29 0f     AND #$0f
926F  d0 21     BNE $9292
9271  8a        TXA
9272  38        SEC
9273  e5 c0     SBC $c0
9275  a8        TAY
9276  ad da 81  LDA $81da
9279  39 54 82  AND $8254,Y
927C  d0 2e     BNE $92ac
927E  8a        TXA
927F  38        SEC
9280  f9 54 84  SBC $8454,Y
9283  aa        TAX
9284  b5 00     LDA $00,X
9286  f0 f6     BEQ $927e
9288  e4 c0     CPX $c0
928A  d0 1e     BNE $92aa
928C  20 e3 b5  JSR $b5e3
928F  4c aa 92  JMP $92aa
9292  ad 50 81  LDA $8150
9295  3d 60 81  AND $8160,X
9298  d0 12     BNE $92ac
929A  8a        TXA
929B  38        SEC
929C  e5 c0     SBC $c0
929E  a8        TAY
929F  ad da 81  LDA $81da
92A2  39 54 82  AND $8254,Y
92A5  d0 05     BNE $92ac
92A7  20 e3 b5  JSR $b5e3
92AA  a6 c1     LDX $c1
92AC  60        RTS
92AD  bd 20 e6  LDA $e620,X
92B0  cc d0 02  CPY $02d0
92B3  e6 cd     INC $cd
92B5  ba        TSX
92B6  8a        TXA
92B7  a6 c6     LDX $c6
92B9  e0 0c     CPX #$0c
92BB  90 0c     BCC $92c9
92BD  a5 c8     LDA $c8
92BF  9d 72 07  STA $0772,X
92C2  a5 c9     LDA $c9
92C4  9d f2 07  STA $07f2,X
92C7  60        RTS
92C8  e0 9d     CPX #$9d
92CA  72        ???
92CB  05 bc     ORA $bc
92CD  74        ???
92CE  b1 30     LDA ($30),Y
92D0  05 a9     ORA $a9
92D2  ff        ???
92D3  99 00 04  STA $0400,Y
92D6  a5 94     LDA $94
92D8  10 08     BPL $92e2
92DA  8a        TXA
92DB  69 20     ADC #$20
92DD  9d f2 07  STA $07f2,X
92E0  60        RTS
92E1  d5 a9     CMP $a9,X
92E3  10 9d     BPL $9282
92E5  f2        ???
92E6  07        ???
92E7  a9 00     LDA #$00
92E9  9d 72 07  STA $0772,X
92EC  bd c1 04  LDA $04c1,X
92EF  85 c0     STA $c0
92F1  a5 94     LDA $94
92F3  85 c1     STA $c1
92F5  20 49 80  JSR $8049
92F8  d0 09     BNE $9303
92FA  a9 e0     LDA #$e0
92FC  a6 c6     LDX $c6
92FE  4c 39 93  JMP $9339
9301  00        BRK
9302  b9 a6 c6  LDA $c6a6,Y
9305  c6 cf     DEC $cf
9307  10 2e     BPL $9337
9309  38        SEC
930A  bd 72 06  LDA $0672,X
930D  e5 c8     SBC $c8
930F  bd f2 06  LDA $06f2,X
9312  e5 c9     SBC $c9
9314  b0 17     BCS $932d
9316  38        SEC
9317  a5 c8     LDA $c8
9319  fd 71 06  SBC $0671,X
931C  a5 c9     LDA $c9
931E  fd f1 06  SBC $06f1,X
9321  b0 9a     BCS $92bd
9323  a5 c8     LDA $c8
9325  9d 72 06  STA $0672,X
9328  a5 c9     LDA $c9
932A  9d f2 06  STA $06f2,X
932D  a5 c8     LDA $c8
932F  9d 72 07  STA $0772,X
9332  a5 c9     LDA $c9
9334  9d f2 07  STA $07f2,X
9337  a9 ff     LDA #$ff
9339  9d f2 05  STA $05f2,X
933C  e0 07     CPX #$07
933E  b0 2c     BCS $936c
9340  a9 ff     LDA #$ff
9342  9d 80 04  STA $0480,X
9345  a5 ce     LDA $ce
9347  f0 23     BEQ $936c
9349  bd 00 04  LDA $0400,X
934C  10 08     BPL $9356
934E  a9 00     LDA #$00
9350  85 ce     STA $ce
9352  4c 6c 93  JMP $936c
9355  c1 85     CMP ($85,X)
9357  c0 bd     CPY #$bd
9359  08        PHP
935A  04        ???
935B  85 c1     STA $c1
935D  20 7f b2  JSR $b27f
9360  a6 c6     LDX $c6
9362  a5 c0     LDA $c0
9364  9d 80 04  STA $0480,X
9367  a5 c1     LDA $c1
9369  9d 88 04  STA $0488,X
936C  bd c1 04  LDA $04c1,X
936F  85 c1     STA $c1
9371  a0 10     LDY #$10
9373  b9 84 00  LDA $0084,Y
9376  30 0e     BMI $9386
9378  85 c0     STA $c0
937A  98        TYA
937B  48        PHA
937C  20 49 80  JSR $8049
937F  d0 03     BNE $9384
9381  20 7f b2  JSR $b27f
9384  68        PLA
9385  a8        TAY
9386  c8        INY
9387  c0 20     CPY #$20
9389  90 e8     BCC $9373
938B  a6 c6     LDX $c6
938D  e0 08     CPX #$08
938F  b0 69     BCS $93fa
9391  bc 90 04  LDY $0490,X
9394  30 64     BMI $93fa
9396  b9 00 00  LDA $0000,Y
9399  29 10     AND #$10
939B  f0 26     BEQ $93c3
939D  84 c0     STY $c0
939F  bc 98 04  LDY $0498,X
93A2  c4 c1     CPY $c1
93A4  f0 1d     BEQ $93c3
93A6  b9 00 00  LDA $0000,Y
93A9  f0 08     BEQ $93b3
93AB  29 10     AND #$10
93AD  f0 08     BEQ $93b7
93AF  4c c3 93  JMP $93c3
93B2  a9 a5     LDA #$a5
93B4  cf        ???
93B5  30 0c     BMI $93c3
93B7  84 c1     STY $c1
93B9  20 49 80  JSR $8049
93BC  d0 03     BNE $93c1
93BE  20 fb b1  JSR $b1fb
93C1  a6 c6     LDX $c6
93C3  fe f2 05  INC $05f2,X
93C6  bc a0 04  LDY $04a0,X
93C9  30 2f     BMI $93fa
93CB  b9 00 00  LDA $0000,Y
93CE  29 10     AND #$10
93D0  f0 28     BEQ $93fa
93D2  84 c0     STY $c0
93D4  bd a8 04  LDA $04a8,X
93D7  dd c1 04  CMP $04c1,X
93DA  f0 1e     BEQ $93fa
93DC  a8        TAY
93DD  b9 00 00  LDA $0000,Y
93E0  f0 08     BEQ $93ea
93E2  29 10     AND #$10
93E4  f0 08     BEQ $93ee
93E6  4c fa 93  JMP $93fa
93E9  bd a5 cf  LDA $cfa5,X
93EC  30 0c     BMI $93fa
93EE  84 c1     STY $c1
93F0  20 49 80  JSR $8049
93F3  d0 03     BNE $93f8
93F5  20 fb b1  JSR $b1fb
93F8  a6 c6     LDX $c6
93FA  fe f2 05  INC $05f2,X
93FD  fe f2 05  INC $05f2,X
9400  a6 a4     LDX $a4
9402  30 03     BMI $9407
9404  20 c7 8d  JSR $8dc7
9407  a6 a5     LDX $a5
9409  30 03     BMI $940e
940B  20 c7 8d  JSR $8dc7
940E  a6 a6     LDX $a6
9410  30 03     BMI $9415
9412  20 c7 8d  JSR $8dc7
9415  a6 c6     LDX $c6
9417  a5 cf     LDA $cf
9419  c9 fe     CMP #$fe
941B  10 33     BPL $9450
941D  bd f2 05  LDA $05f2,X
9420  30 2e     BMI $9450
9422  bd c0 04  LDA $04c0,X
9425  dd c1 04  CMP $04c1,X
9428  f0 23     BEQ $944d
942A  85 c0     STA $c0
942C  a0 03     LDY #$03
942E  b9 a4 00  LDA $00a4,Y
9431  30 15     BMI $9448
9433  dd c1 04  CMP $04c1,X
9436  f0 10     BEQ $9448
9438  85 c1     STA $c1
943A  98        TYA
943B  48        PHA
943C  20 49 80  JSR $8049
943F  d0 03     BNE $9444
9441  20 5b b2  JSR $b25b
9444  68        PLA
9445  a8        TAY
9446  a6 c6     LDX $c6
9448  c8        INY
9449  c0 10     CPY #$10
944B  90 e1     BCC $942e
944D  60        RTS
944E  ad ad a6  LDA $a6ad
9451  a7        ???
9452  30 03     BMI $9457
9454  20 c7 8d  JSR $8dc7
9457  a6 a8     LDX $a8
9459  30 03     BMI $945e
945B  20 c7 8d  JSR $8dc7
945E  a6 a9     LDX $a9
9460  30 03     BMI $9465
9462  20 c7 8d  JSR $8dc7
9465  a6 aa     LDX $aa
9467  30 03     BMI $946c
9469  20 c7 8d  JSR $8dc7
946C  a6 ab     LDX $ab
946E  30 03     BMI $9473
9470  20 c7 8d  JSR $8dc7
9473  a6 ac     LDX $ac
9475  30 03     BMI $947a
9477  20 c7 8d  JSR $8dc7
947A  a6 ad     LDX $ad
947C  30 03     BMI $9481
947E  20 c7 8d  JSR $8dc7
9481  a6 ae     LDX $ae
9483  30 03     BMI $9488
9485  20 c7 8d  JSR $8dc7
9488  a6 af     LDX $af
948A  30 03     BMI $948f
948C  20 c7 8d  JSR $8dc7
948F  a6 b0     LDX $b0
9491  30 03     BMI $9496
9493  20 c7 8d  JSR $8dc7
9496  a6 b1     LDX $b1
9498  30 03     BMI $949d
949A  20 c7 8d  JSR $8dc7
949D  a6 b2     LDX $b2
949F  30 03     BMI $94a4
94A1  20 c7 8d  JSR $8dc7
94A4  a6 b3     LDX $b3
94A6  30 03     BMI $94ab
94A8  20 c7 8d  JSR $8dc7
94AB  a6 c6     LDX $c6
94AD  a5 cf     LDA $cf
94AF  10 08     BPL $94b9
94B1  bd f2 05  LDA $05f2,X
94B4  30 03     BMI $94b9
94B6  60        RTS
94B7  4e 5e a6  LSR $a65e
94BA  94 30     STY $30,X
94BC  5a        ???
94BD  86 c0     STX $c0
94BF  ad 40 81  LDA $8140
94C2  3d 5f 81  AND $815f,X
94C5  15 ff     ORA $ff,X
94C7  d0 0c     BNE $94d5
94C9  a9 ff     LDA #$ff
94CB  18        CLC
94CC  65 c0     ADC $c0
94CE  85 c1     STA $c1
94D0  20 d7 b1  JSR $b1d7
94D3  a6 c0     LDX $c0
94D5  ad 40 81  LDA $8140
94D8  3d 61 81  AND $8161,X
94DB  15 01     ORA $01,X
94DD  d0 0c     BNE $94eb
94DF  a9 01     LDA #$01
94E1  18        CLC
94E2  65 c0     ADC $c0
94E4  85 c1     STA $c1
94E6  20 d7 b1  JSR $b1d7
94E9  a6 c0     LDX $c0
94EB  ad 40 81  LDA $8140
94EE  3d 54 81  AND $8154,X
94F1  15 f4     ORA $f4,X
94F3  d0 0c     BNE $9501
94F5  a9 f4     LDA #$f4
94F7  18        CLC
94F8  65 c0     ADC $c0
94FA  85 c1     STA $c1
94FC  20 d7 b1  JSR $b1d7
94FF  a6 c0     LDX $c0
9501  ad 40 81  LDA $8140
9504  3d 6c 81  AND $816c,X
9507  15 0c     ORA $0c,X
9509  d0 0c     BNE $9517
950B  a9 0c     LDA #$0c
950D  18        CLC
950E  65 c0     ADC $c0
9510  85 c1     STA $c1
9512  20 d7 b1  JSR $b1d7
9515  a6 c0     LDX $c0
9517  a6 95     LDX $95
9519  10 05     BPL $9520
951B  4c 4c 97  JMP $974c
951E  ac 20 86  LDY $8620
9521  c0 b5     CPY #$b5
9523  ff        ???
9524  f0 05     BEQ $952b
9526  4c b7 95  JMP $95b7
9529  4a        LSR A
952A  b4 a9     LDY $a9,X
952C  ff        ???
952D  18        CLC
952E  65 c0     ADC $c0
9530  85 c1     STA $c1
9532  20 d7 b1  JSR $b1d7
9535  a6 c0     LDX $c0
9537  b5 fe     LDA $fe,X
9539  d0 7c     BNE $95b7
953B  a9 fe     LDA #$fe
953D  18        CLC
953E  65 c0     ADC $c0
9540  85 c1     STA $c1
9542  20 d7 b1  JSR $b1d7
9545  a6 c0     LDX $c0
9547  b5 fd     LDA $fd,X
9549  d0 6c     BNE $95b7
954B  a9 fd     LDA #$fd
954D  18        CLC
954E  65 c0     ADC $c0
9550  85 c1     STA $c1
9552  20 d7 b1  JSR $b1d7
9555  a6 c0     LDX $c0
9557  b5 fc     LDA $fc,X
9559  d0 5c     BNE $95b7
955B  a9 fc     LDA #$fc
955D  18        CLC
955E  65 c0     ADC $c0
9560  85 c1     STA $c1
9562  20 d7 b1  JSR $b1d7
9565  a6 c0     LDX $c0
9567  b5 fb     LDA $fb,X
9569  d0 4c     BNE $95b7
956B  a9 fb     LDA #$fb
956D  18        CLC
956E  65 c0     ADC $c0
9570  85 c1     STA $c1
9572  20 d7 b1  JSR $b1d7
9575  a6 c0     LDX $c0
9577  b5 fa     LDA $fa,X
9579  d0 3c     BNE $95b7
957B  a9 fa     LDA #$fa
957D  18        CLC
957E  65 c0     ADC $c0
9580  85 c1     STA $c1
9582  20 d7 b1  JSR $b1d7
9585  a6 c0     LDX $c0
9587  b5 f9     LDA $f9,X
9589  d0 2c     BNE $95b7
958B  a9 f9     LDA #$f9
958D  18        CLC
958E  65 c0     ADC $c0
9590  85 c1     STA $c1
9592  20 d7 b1  JSR $b1d7
9595  a6 c0     LDX $c0
9597  b5 f8     LDA $f8,X
9599  d0 1c     BNE $95b7
959B  a9 f8     LDA #$f8
959D  18        CLC
959E  65 c0     ADC $c0
95A0  85 c1     STA $c1
95A2  20 d7 b1  JSR $b1d7
95A5  a6 c0     LDX $c0
95A7  b5 f7     LDA $f7,X
95A9  d0 0c     BNE $95b7
95AB  a9 f7     LDA #$f7
95AD  18        CLC
95AE  65 c0     ADC $c0
95B0  85 c1     STA $c1
95B2  20 d7 b1  JSR $b1d7
95B5  a6 c0     LDX $c0
95B7  b5 01     LDA $01,X
95B9  f0 05     BEQ $95c0
95BB  4c 4c 96  JMP $964c
95BE  4a        LSR A
95BF  b4 a9     LDY $a9,X
95C1  01 18     ORA ($18,X)
95C3  65 c0     ADC $c0
95C5  85 c1     STA $c1
95C7  20 d7 b1  JSR $b1d7
95CA  a6 c0     LDX $c0
95CC  b5 02     LDA $02,X
95CE  d0 7c     BNE $964c
95D0  a9 02     LDA #$02
95D2  18        CLC
95D3  65 c0     ADC $c0
95D5  85 c1     STA $c1
95D7  20 d7 b1  JSR $b1d7
95DA  a6 c0     LDX $c0
95DC  b5 03     LDA $03,X
95DE  d0 6c     BNE $964c
95E0  a9 03     LDA #$03
95E2  18        CLC
95E3  65 c0     ADC $c0
95E5  85 c1     STA $c1
95E7  20 d7 b1  JSR $b1d7
95EA  a6 c0     LDX $c0
95EC  b5 04     LDA $04,X
95EE  d0 5c     BNE $964c
95F0  a9 04     LDA #$04
95F2  18        CLC
95F3  65 c0     ADC $c0
95F5  85 c1     STA $c1
95F7  20 d7 b1  JSR $b1d7
95FA  a6 c0     LDX $c0
95FC  b5 05     LDA $05,X
95FE  d0 4c     BNE $964c
9600  a9 05     LDA #$05
9602  18        CLC
9603  65 c0     ADC $c0
9605  85 c1     STA $c1
9607  20 d7 b1  JSR $b1d7
960A  a6 c0     LDX $c0
960C  b5 06     LDA $06,X
960E  d0 3c     BNE $964c
9610  a9 06     LDA #$06
9612  18        CLC
9613  65 c0     ADC $c0
9615  85 c1     STA $c1
9617  20 d7 b1  JSR $b1d7
961A  a6 c0     LDX $c0
961C  b5 07     LDA $07,X
961E  d0 2c     BNE $964c
9620  a9 07     LDA #$07
9622  18        CLC
9623  65 c0     ADC $c0
9625  85 c1     STA $c1
9627  20 d7 b1  JSR $b1d7
962A  a6 c0     LDX $c0
962C  b5 08     LDA $08,X
962E  d0 1c     BNE $964c
9630  a9 08     LDA #$08
9632  18        CLC
9633  65 c0     ADC $c0
9635  85 c1     STA $c1
9637  20 d7 b1  JSR $b1d7
963A  a6 c0     LDX $c0
963C  b5 09     LDA $09,X
963E  d0 0c     BNE $964c
9640  a9 09     LDA #$09
9642  18        CLC
9643  65 c0     ADC $c0
9645  85 c1     STA $c1
9647  20 d7 b1  JSR $b1d7
964A  a6 c0     LDX $c0
964C  b5 f4     LDA $f4,X
964E  d0 7c     BNE $96cc
9650  a9 f4     LDA #$f4
9652  18        CLC
9653  65 c0     ADC $c0
9655  85 c1     STA $c1
9657  20 d7 b1  JSR $b1d7
965A  a6 c0     LDX $c0
965C  b5 e8     LDA $e8,X
965E  d0 6c     BNE $96cc
9660  a9 e8     LDA #$e8
9662  18        CLC
9663  65 c0     ADC $c0
9665  85 c1     STA $c1
9667  20 d7 b1  JSR $b1d7
966A  a6 c0     LDX $c0
966C  b5 dc     LDA $dc,X
966E  d0 5c     BNE $96cc
9670  a9 dc     LDA #$dc
9672  18        CLC
9673  65 c0     ADC $c0
9675  85 c1     STA $c1
9677  20 d7 b1  JSR $b1d7
967A  a6 c0     LDX $c0
967C  b5 d0     LDA $d0,X
967E  d0 4c     BNE $96cc
9680  a9 d0     LDA #$d0
9682  18        CLC
9683  65 c0     ADC $c0
9685  85 c1     STA $c1
9687  20 d7 b1  JSR $b1d7
968A  a6 c0     LDX $c0
968C  b5 c4     LDA $c4,X
968E  d0 3c     BNE $96cc
9690  a9 c4     LDA #$c4
9692  18        CLC
9693  65 c0     ADC $c0
9695  85 c1     STA $c1
9697  20 d7 b1  JSR $b1d7
969A  a6 c0     LDX $c0
969C  b5 b8     LDA $b8,X
969E  d0 2c     BNE $96cc
96A0  a9 b8     LDA #$b8
96A2  18        CLC
96A3  65 c0     ADC $c0
96A5  85 c1     STA $c1
96A7  20 d7 b1  JSR $b1d7
96AA  a6 c0     LDX $c0
96AC  b5 ac     LDA $ac,X
96AE  d0 1c     BNE $96cc
96B0  a9 ac     LDA #$ac
96B2  18        CLC
96B3  65 c0     ADC $c0
96B5  85 c1     STA $c1
96B7  20 d7 b1  JSR $b1d7
96BA  a6 c0     LDX $c0
96BC  b5 a0     LDA $a0,X
96BE  d0 0c     BNE $96cc
96C0  a9 a0     LDA #$a0
96C2  18        CLC
96C3  65 c0     ADC $c0
96C5  85 c1     STA $c1
96C7  20 d7 b1  JSR $b1d7
96CA  a6 c0     LDX $c0
96CC  b5 0c     LDA $0c,X
96CE  d0 7c     BNE $974c
96D0  a9 0c     LDA #$0c
96D2  18        CLC
96D3  65 c0     ADC $c0
96D5  85 c1     STA $c1
96D7  20 d7 b1  JSR $b1d7
96DA  a6 c0     LDX $c0
96DC  b5 18     LDA $18,X
96DE  d0 6c     BNE $974c
96E0  a9 18     LDA #$18
96E2  18        CLC
96E3  65 c0     ADC $c0
96E5  85 c1     STA $c1
96E7  20 d7 b1  JSR $b1d7
96EA  a6 c0     LDX $c0
96EC  b5 24     LDA $24,X
96EE  d0 5c     BNE $974c
96F0  a9 24     LDA #$24
96F2  18        CLC
96F3  65 c0     ADC $c0
96F5  85 c1     STA $c1
96F7  20 d7 b1  JSR $b1d7
96FA  a6 c0     LDX $c0
96FC  b5 30     LDA $30,X
96FE  d0 4c     BNE $974c
9700  a9 30     LDA #$30
9702  18        CLC
9703  65 c0     ADC $c0
9705  85 c1     STA $c1
9707  20 d7 b1  JSR $b1d7
970A  a6 c0     LDX $c0
970C  b5 3c     LDA $3c,X
970E  d0 3c     BNE $974c
9710  a9 3c     LDA #$3c
9712  18        CLC
9713  65 c0     ADC $c0
9715  85 c1     STA $c1
9717  20 d7 b1  JSR $b1d7
971A  a6 c0     LDX $c0
971C  b5 48     LDA $48,X
971E  d0 2c     BNE $974c
9720  a9 48     LDA #$48
9722  18        CLC
9723  65 c0     ADC $c0
9725  85 c1     STA $c1
9727  20 d7 b1  JSR $b1d7
972A  a6 c0     LDX $c0
972C  b5 54     LDA $54,X
972E  d0 1c     BNE $974c
9730  a9 54     LDA #$54
9732  18        CLC
9733  65 c0     ADC $c0
9735  85 c1     STA $c1
9737  20 d7 b1  JSR $b1d7
973A  a6 c0     LDX $c0
973C  b5 60     LDA $60,X
973E  d0 0c     BNE $974c
9740  a9 60     LDA #$60
9742  18        CLC
9743  65 c0     ADC $c0
9745  85 c1     STA $c1
9747  20 d7 b1  JSR $b1d7
974A  a6 c0     LDX $c0
974C  a6 96     LDX $96
974E  10 05     BPL $9755
9750  4c 81 99  JMP $9981
9753  ac 20 86  LDY $8620
9756  c0 b5     CPY #$b5
9758  ff        ???
9759  f0 05     BEQ $9760
975B  4c ec 97  JMP $97ec
975E  4a        LSR A
975F  b4 a9     LDY $a9,X
9761  ff        ???
9762  18        CLC
9763  65 c0     ADC $c0
9765  85 c1     STA $c1
9767  20 d7 b1  JSR $b1d7
976A  a6 c0     LDX $c0
976C  b5 fe     LDA $fe,X
976E  d0 7c     BNE $97ec
9770  a9 fe     LDA #$fe
9772  18        CLC
9773  65 c0     ADC $c0
9775  85 c1     STA $c1
9777  20 d7 b1  JSR $b1d7
977A  a6 c0     LDX $c0
977C  b5 fd     LDA $fd,X
977E  d0 6c     BNE $97ec
9780  a9 fd     LDA #$fd
9782  18        CLC
9783  65 c0     ADC $c0
9785  85 c1     STA $c1
9787  20 d7 b1  JSR $b1d7
978A  a6 c0     LDX $c0
978C  b5 fc     LDA $fc,X
978E  d0 5c     BNE $97ec
9790  a9 fc     LDA #$fc
9792  18        CLC
9793  65 c0     ADC $c0
9795  85 c1     STA $c1
9797  20 d7 b1  JSR $b1d7
979A  a6 c0     LDX $c0
979C  b5 fb     LDA $fb,X
979E  d0 4c     BNE $97ec
97A0  a9 fb     LDA #$fb
97A2  18        CLC
97A3  65 c0     ADC $c0
97A5  85 c1     STA $c1
97A7  20 d7 b1  JSR $b1d7
97AA  a6 c0     LDX $c0
97AC  b5 fa     LDA $fa,X
97AE  d0 3c     BNE $97ec
97B0  a9 fa     LDA #$fa
97B2  18        CLC
97B3  65 c0     ADC $c0
97B5  85 c1     STA $c1
97B7  20 d7 b1  JSR $b1d7
97BA  a6 c0     LDX $c0
97BC  b5 f9     LDA $f9,X
97BE  d0 2c     BNE $97ec
97C0  a9 f9     LDA #$f9
97C2  18        CLC
97C3  65 c0     ADC $c0
97C5  85 c1     STA $c1
97C7  20 d7 b1  JSR $b1d7
97CA  a6 c0     LDX $c0
97CC  b5 f8     LDA $f8,X
97CE  d0 1c     BNE $97ec
97D0  a9 f8     LDA #$f8
97D2  18        CLC
97D3  65 c0     ADC $c0
97D5  85 c1     STA $c1
97D7  20 d7 b1  JSR $b1d7
97DA  a6 c0     LDX $c0
97DC  b5 f7     LDA $f7,X
97DE  d0 0c     BNE $97ec
97E0  a9 f7     LDA #$f7
97E2  18        CLC
97E3  65 c0     ADC $c0
97E5  85 c1     STA $c1
97E7  20 d7 b1  JSR $b1d7
97EA  a6 c0     LDX $c0
97EC  b5 01     LDA $01,X
97EE  f0 05     BEQ $97f5
97F0  4c 81 98  JMP $9881
97F3  4a        LSR A
97F4  b4 a9     LDY $a9,X
97F6  01 18     ORA ($18,X)
97F8  65 c0     ADC $c0
97FA  85 c1     STA $c1
97FC  20 d7 b1  JSR $b1d7
97FF  a6 c0     LDX $c0
9801  b5 02     LDA $02,X
9803  d0 7c     BNE $9881
9805  a9 02     LDA #$02
9807  18        CLC
9808  65 c0     ADC $c0
980A  85 c1     STA $c1
980C  20 d7 b1  JSR $b1d7
980F  a6 c0     LDX $c0
9811  b5 03     LDA $03,X
9813  d0 6c     BNE $9881
9815  a9 03     LDA #$03
9817  18        CLC
9818  65 c0     ADC $c0
981A  85 c1     STA $c1
981C  20 d7 b1  JSR $b1d7
981F  a6 c0     LDX $c0
9821  b5 04     LDA $04,X
9823  d0 5c     BNE $9881
9825  a9 04     LDA #$04
9827  18        CLC
9828  65 c0     ADC $c0
982A  85 c1     STA $c1
982C  20 d7 b1  JSR $b1d7
982F  a6 c0     LDX $c0
9831  b5 05     LDA $05,X
9833  d0 4c     BNE $9881
9835  a9 05     LDA #$05
9837  18        CLC
9838  65 c0     ADC $c0
983A  85 c1     STA $c1
983C  20 d7 b1  JSR $b1d7
983F  a6 c0     LDX $c0
9841  b5 06     LDA $06,X
9843  d0 3c     BNE $9881
9845  a9 06     LDA #$06
9847  18        CLC
9848  65 c0     ADC $c0
984A  85 c1     STA $c1
984C  20 d7 b1  JSR $b1d7
984F  a6 c0     LDX $c0
9851  b5 07     LDA $07,X
9853  d0 2c     BNE $9881
9855  a9 07     LDA #$07
9857  18        CLC
9858  65 c0     ADC $c0
985A  85 c1     STA $c1
985C  20 d7 b1  JSR $b1d7
985F  a6 c0     LDX $c0
9861  b5 08     LDA $08,X
9863  d0 1c     BNE $9881
9865  a9 08     LDA #$08
9867  18        CLC
9868  65 c0     ADC $c0
986A  85 c1     STA $c1
986C  20 d7 b1  JSR $b1d7
986F  a6 c0     LDX $c0
9871  b5 09     LDA $09,X
9873  d0 0c     BNE $9881
9875  a9 09     LDA #$09
9877  18        CLC
9878  65 c0     ADC $c0
987A  85 c1     STA $c1
987C  20 d7 b1  JSR $b1d7
987F  a6 c0     LDX $c0
9881  b5 f4     LDA $f4,X
9883  d0 7c     BNE $9901
9885  a9 f4     LDA #$f4
9887  18        CLC
9888  65 c0     ADC $c0
988A  85 c1     STA $c1
988C  20 d7 b1  JSR $b1d7
988F  a6 c0     LDX $c0
9891  b5 e8     LDA $e8,X
9893  d0 6c     BNE $9901
9895  a9 e8     LDA #$e8
9897  18        CLC
9898  65 c0     ADC $c0
989A  85 c1     STA $c1
989C  20 d7 b1  JSR $b1d7
989F  a6 c0     LDX $c0
98A1  b5 dc     LDA $dc,X
98A3  d0 5c     BNE $9901
98A5  a9 dc     LDA #$dc
98A7  18        CLC
98A8  65 c0     ADC $c0
98AA  85 c1     STA $c1
98AC  20 d7 b1  JSR $b1d7
98AF  a6 c0     LDX $c0
98B1  b5 d0     LDA $d0,X
98B3  d0 4c     BNE $9901
98B5  a9 d0     LDA #$d0
98B7  18        CLC
98B8  65 c0     ADC $c0
98BA  85 c1     STA $c1
98BC  20 d7 b1  JSR $b1d7
98BF  a6 c0     LDX $c0
98C1  b5 c4     LDA $c4,X
98C3  d0 3c     BNE $9901
98C5  a9 c4     LDA #$c4
98C7  18        CLC
98C8  65 c0     ADC $c0
98CA  85 c1     STA $c1
98CC  20 d7 b1  JSR $b1d7
98CF  a6 c0     LDX $c0
98D1  b5 b8     LDA $b8,X
98D3  d0 2c     BNE $9901
98D5  a9 b8     LDA #$b8
98D7  18        CLC
98D8  65 c0     ADC $c0
98DA  85 c1     STA $c1
98DC  20 d7 b1  JSR $b1d7
98DF  a6 c0     LDX $c0
98E1  b5 ac     LDA $ac,X
98E3  d0 1c     BNE $9901
98E5  a9 ac     LDA #$ac
98E7  18        CLC
98E8  65 c0     ADC $c0
98EA  85 c1     STA $c1
98EC  20 d7 b1  JSR $b1d7
98EF  a6 c0     LDX $c0
98F1  b5 a0     LDA $a0,X
98F3  d0 0c     BNE $9901
98F5  a9 a0     LDA #$a0
98F7  18        CLC
98F8  65 c0     ADC $c0
98FA  85 c1     STA $c1
98FC  20 d7 b1  JSR $b1d7
98FF  a6 c0     LDX $c0
9901  b5 0c     LDA $0c,X
9903  d0 7c     BNE $9981
9905  a9 0c     LDA #$0c
9907  18        CLC
9908  65 c0     ADC $c0
990A  85 c1     STA $c1
990C  20 d7 b1  JSR $b1d7
990F  a6 c0     LDX $c0
9911  b5 18     LDA $18,X
9913  d0 6c     BNE $9981
9915  a9 18     LDA #$18
9917  18        CLC
9918  65 c0     ADC $c0
991A  85 c1     STA $c1
991C  20 d7 b1  JSR $b1d7
991F  a6 c0     LDX $c0
9921  b5 24     LDA $24,X
9923  d0 5c     BNE $9981
9925  a9 24     LDA #$24
9927  18        CLC
9928  65 c0     ADC $c0
992A  85 c1     STA $c1
992C  20 d7 b1  JSR $b1d7
992F  a6 c0     LDX $c0
9931  b5 30     LDA $30,X
9933  d0 4c     BNE $9981
9935  a9 30     LDA #$30
9937  18        CLC
9938  65 c0     ADC $c0
993A  85 c1     STA $c1
993C  20 d7 b1  JSR $b1d7
993F  a6 c0     LDX $c0
9941  b5 3c     LDA $3c,X
9943  d0 3c     BNE $9981
9945  a9 3c     LDA #$3c
9947  18        CLC
9948  65 c0     ADC $c0
994A  85 c1     STA $c1
994C  20 d7 b1  JSR $b1d7
994F  a6 c0     LDX $c0
9951  b5 48     LDA $48,X
9953  d0 2c     BNE $9981
9955  a9 48     LDA #$48
9957  18        CLC
9958  65 c0     ADC $c0
995A  85 c1     STA $c1
995C  20 d7 b1  JSR $b1d7
995F  a6 c0     LDX $c0
9961  b5 54     LDA $54,X
9963  d0 1c     BNE $9981
9965  a9 54     LDA #$54
9967  18        CLC
9968  65 c0     ADC $c0
996A  85 c1     STA $c1
996C  20 d7 b1  JSR $b1d7
996F  a6 c0     LDX $c0
9971  b5 60     LDA $60,X
9973  d0 0c     BNE $9981
9975  a9 60     LDA #$60
9977  18        CLC
9978  65 c0     ADC $c0
997A  85 c1     STA $c1
997C  20 d7 b1  JSR $b1d7
997F  a6 c0     LDX $c0
9981  a6 97     LDX $97
9983  10 05     BPL $998a
9985  4c b6 9b  JMP $9bb6
9988  20 8d 86  JSR $868d
998B  c0 b5     CPY #$b5
998D  ff        ???
998E  f0 05     BEQ $9995
9990  4c 21 9a  JMP $9a21
9993  4a        LSR A
9994  b4 a9     LDY $a9,X
9996  ff        ???
9997  18        CLC
9998  65 c0     ADC $c0
999A  85 c1     STA $c1
999C  20 d7 b1  JSR $b1d7
999F  a6 c0     LDX $c0
99A1  b5 fe     LDA $fe,X
99A3  d0 7c     BNE $9a21
99A5  a9 fe     LDA #$fe
99A7  18        CLC
99A8  65 c0     ADC $c0
99AA  85 c1     STA $c1
99AC  20 d7 b1  JSR $b1d7
99AF  a6 c0     LDX $c0
99B1  b5 fd     LDA $fd,X
99B3  d0 6c     BNE $9a21
99B5  a9 fd     LDA #$fd
99B7  18        CLC
99B8  65 c0     ADC $c0
99BA  85 c1     STA $c1
99BC  20 d7 b1  JSR $b1d7
99BF  a6 c0     LDX $c0
99C1  b5 fc     LDA $fc,X
99C3  d0 5c     BNE $9a21
99C5  a9 fc     LDA #$fc
99C7  18        CLC
99C8  65 c0     ADC $c0
99CA  85 c1     STA $c1
99CC  20 d7 b1  JSR $b1d7
99CF  a6 c0     LDX $c0
99D1  b5 fb     LDA $fb,X
99D3  d0 4c     BNE $9a21
99D5  a9 fb     LDA #$fb
99D7  18        CLC
99D8  65 c0     ADC $c0
99DA  85 c1     STA $c1
99DC  20 d7 b1  JSR $b1d7
99DF  a6 c0     LDX $c0
99E1  b5 fa     LDA $fa,X
99E3  d0 3c     BNE $9a21
99E5  a9 fa     LDA #$fa
99E7  18        CLC
99E8  65 c0     ADC $c0
99EA  85 c1     STA $c1
99EC  20 d7 b1  JSR $b1d7
99EF  a6 c0     LDX $c0
99F1  b5 f9     LDA $f9,X
99F3  d0 2c     BNE $9a21
99F5  a9 f9     LDA #$f9
99F7  18        CLC
99F8  65 c0     ADC $c0
99FA  85 c1     STA $c1
99FC  20 d7 b1  JSR $b1d7
99FF  a6 c0     LDX $c0
9A01  b5 f8     LDA $f8,X
9A03  d0 1c     BNE $9a21
9A05  a9 f8     LDA #$f8
9A07  18        CLC
9A08  65 c0     ADC $c0
9A0A  85 c1     STA $c1
9A0C  20 d7 b1  JSR $b1d7
9A0F  a6 c0     LDX $c0
9A11  b5 f7     LDA $f7,X
9A13  d0 0c     BNE $9a21
9A15  a9 f7     LDA #$f7
9A17  18        CLC
9A18  65 c0     ADC $c0
9A1A  85 c1     STA $c1
9A1C  20 d7 b1  JSR $b1d7
9A1F  a6 c0     LDX $c0
9A21  b5 01     LDA $01,X
9A23  f0 05     BEQ $9a2a
9A25  4c b6 9a  JMP $9ab6
9A28  4a        LSR A
9A29  b4 a9     LDY $a9,X
9A2B  01 18     ORA ($18,X)
9A2D  65 c0     ADC $c0
9A2F  85 c1     STA $c1
9A31  20 d7 b1  JSR $b1d7
9A34  a6 c0     LDX $c0
9A36  b5 02     LDA $02,X
9A38  d0 7c     BNE $9ab6
9A3A  a9 02     LDA #$02
9A3C  18        CLC
9A3D  65 c0     ADC $c0
9A3F  85 c1     STA $c1
9A41  20 d7 b1  JSR $b1d7
9A44  a6 c0     LDX $c0
9A46  b5 03     LDA $03,X
9A48  d0 6c     BNE $9ab6
9A4A  a9 03     LDA #$03
9A4C  18        CLC
9A4D  65 c0     ADC $c0
9A4F  85 c1     STA $c1
9A51  20 d7 b1  JSR $b1d7
9A54  a6 c0     LDX $c0
9A56  b5 04     LDA $04,X
9A58  d0 5c     BNE $9ab6
9A5A  a9 04     LDA #$04
9A5C  18        CLC
9A5D  65 c0     ADC $c0
9A5F  85 c1     STA $c1
9A61  20 d7 b1  JSR $b1d7
9A64  a6 c0     LDX $c0
9A66  b5 05     LDA $05,X
9A68  d0 4c     BNE $9ab6
9A6A  a9 05     LDA #$05
9A6C  18        CLC
9A6D  65 c0     ADC $c0
9A6F  85 c1     STA $c1
9A71  20 d7 b1  JSR $b1d7
9A74  a6 c0     LDX $c0
9A76  b5 06     LDA $06,X
9A78  d0 3c     BNE $9ab6
9A7A  a9 06     LDA #$06
9A7C  18        CLC
9A7D  65 c0     ADC $c0
9A7F  85 c1     STA $c1
9A81  20 d7 b1  JSR $b1d7
9A84  a6 c0     LDX $c0
9A86  b5 07     LDA $07,X
9A88  d0 2c     BNE $9ab6
9A8A  a9 07     LDA #$07
9A8C  18        CLC
9A8D  65 c0     ADC $c0
9A8F  85 c1     STA $c1
9A91  20 d7 b1  JSR $b1d7
9A94  a6 c0     LDX $c0
9A96  b5 08     LDA $08,X
9A98  d0 1c     BNE $9ab6
9A9A  a9 08     LDA #$08
9A9C  18        CLC
9A9D  65 c0     ADC $c0
9A9F  85 c1     STA $c1
9AA1  20 d7 b1  JSR $b1d7
9AA4  a6 c0     LDX $c0
9AA6  b5 09     LDA $09,X
9AA8  d0 0c     BNE $9ab6
9AAA  a9 09     LDA #$09
9AAC  18        CLC
9AAD  65 c0     ADC $c0
9AAF  85 c1     STA $c1
9AB1  20 d7 b1  JSR $b1d7
9AB4  a6 c0     LDX $c0
9AB6  b5 f4     LDA $f4,X
9AB8  d0 7c     BNE $9b36
9ABA  a9 f4     LDA #$f4
9ABC  18        CLC
9ABD  65 c0     ADC $c0
9ABF  85 c1     STA $c1
9AC1  20 d7 b1  JSR $b1d7
9AC4  a6 c0     LDX $c0
9AC6  b5 e8     LDA $e8,X
9AC8  d0 6c     BNE $9b36
9ACA  a9 e8     LDA #$e8
9ACC  18        CLC
9ACD  65 c0     ADC $c0
9ACF  85 c1     STA $c1
9AD1  20 d7 b1  JSR $b1d7
9AD4  a6 c0     LDX $c0
9AD6  b5 dc     LDA $dc,X
9AD8  d0 5c     BNE $9b36
9ADA  a9 dc     LDA #$dc
9ADC  18        CLC
9ADD  65 c0     ADC $c0
9ADF  85 c1     STA $c1
9AE1  20 d7 b1  JSR $b1d7
9AE4  a6 c0     LDX $c0
9AE6  b5 d0     LDA $d0,X
9AE8  d0 4c     BNE $9b36
9AEA  a9 d0     LDA #$d0
9AEC  18        CLC
9AED  65 c0     ADC $c0
9AEF  85 c1     STA $c1
9AF1  20 d7 b1  JSR $b1d7
9AF4  a6 c0     LDX $c0
9AF6  b5 c4     LDA $c4,X
9AF8  d0 3c     BNE $9b36
9AFA  a9 c4     LDA #$c4
9AFC  18        CLC
9AFD  65 c0     ADC $c0
9AFF  85 c1     STA $c1
9B01  20 d7 b1  JSR $b1d7
9B04  a6 c0     LDX $c0
9B06  b5 b8     LDA $b8,X
9B08  d0 2c     BNE $9b36
9B0A  a9 b8     LDA #$b8
9B0C  18        CLC
9B0D  65 c0     ADC $c0
9B0F  85 c1     STA $c1
9B11  20 d7 b1  JSR $b1d7
9B14  a6 c0     LDX $c0
9B16  b5 ac     LDA $ac,X
9B18  d0 1c     BNE $9b36
9B1A  a9 ac     LDA #$ac
9B1C  18        CLC
9B1D  65 c0     ADC $c0
9B1F  85 c1     STA $c1
9B21  20 d7 b1  JSR $b1d7
9B24  a6 c0     LDX $c0
9B26  b5 a0     LDA $a0,X
9B28  d0 0c     BNE $9b36
9B2A  a9 a0     LDA #$a0
9B2C  18        CLC
9B2D  65 c0     ADC $c0
9B2F  85 c1     STA $c1
9B31  20 d7 b1  JSR $b1d7
9B34  a6 c0     LDX $c0
9B36  b5 0c     LDA $0c,X
9B38  d0 7c     BNE $9bb6
9B3A  a9 0c     LDA #$0c
9B3C  18        CLC
9B3D  65 c0     ADC $c0
9B3F  85 c1     STA $c1
9B41  20 d7 b1  JSR $b1d7
9B44  a6 c0     LDX $c0
9B46  b5 18     LDA $18,X
9B48  d0 6c     BNE $9bb6
9B4A  a9 18     LDA #$18
9B4C  18        CLC
9B4D  65 c0     ADC $c0
9B4F  85 c1     STA $c1
9B51  20 d7 b1  JSR $b1d7
9B54  a6 c0     LDX $c0
9B56  b5 24     LDA $24,X
9B58  d0 5c     BNE $9bb6
9B5A  a9 24     LDA #$24
9B5C  18        CLC
9B5D  65 c0     ADC $c0
9B5F  85 c1     STA $c1
9B61  20 d7 b1  JSR $b1d7
9B64  a6 c0     LDX $c0
9B66  b5 30     LDA $30,X
9B68  d0 4c     BNE $9bb6
9B6A  a9 30     LDA #$30
9B6C  18        CLC
9B6D  65 c0     ADC $c0
9B6F  85 c1     STA $c1
9B71  20 d7 b1  JSR $b1d7
9B74  a6 c0     LDX $c0
9B76  b5 3c     LDA $3c,X
9B78  d0 3c     BNE $9bb6
9B7A  a9 3c     LDA #$3c
9B7C  18        CLC
9B7D  65 c0     ADC $c0
9B7F  85 c1     STA $c1
9B81  20 d7 b1  JSR $b1d7
9B84  a6 c0     LDX $c0
9B86  b5 48     LDA $48,X
9B88  d0 2c     BNE $9bb6
9B8A  a9 48     LDA #$48
9B8C  18        CLC
9B8D  65 c0     ADC $c0
9B8F  85 c1     STA $c1
9B91  20 d7 b1  JSR $b1d7
9B94  a6 c0     LDX $c0
9B96  b5 54     LDA $54,X
9B98  d0 1c     BNE $9bb6
9B9A  a9 54     LDA #$54
9B9C  18        CLC
9B9D  65 c0     ADC $c0
9B9F  85 c1     STA $c1
9BA1  20 d7 b1  JSR $b1d7
9BA4  a6 c0     LDX $c0
9BA6  b5 60     LDA $60,X
9BA8  d0 0c     BNE $9bb6
9BAA  a9 60     LDA #$60
9BAC  18        CLC
9BAD  65 c0     ADC $c0
9BAF  85 c1     STA $c1
9BB1  20 d7 b1  JSR $b1d7
9BB4  a6 c0     LDX $c0
9BB6  a6 98     LDX $98
9BB8  10 05     BPL $9bbf
9BBA  4c eb 9d  JMP $9deb
9BBD  20 8d 86  JSR $868d
9BC0  c0 b5     CPY #$b5
9BC2  ff        ???
9BC3  f0 05     BEQ $9bca
9BC5  4c 56 9c  JMP $9c56
9BC8  4a        LSR A
9BC9  b4 a9     LDY $a9,X
9BCB  ff        ???
9BCC  18        CLC
9BCD  65 c0     ADC $c0
9BCF  85 c1     STA $c1
9BD1  20 d7 b1  JSR $b1d7
9BD4  a6 c0     LDX $c0
9BD6  b5 fe     LDA $fe,X
9BD8  d0 7c     BNE $9c56
9BDA  a9 fe     LDA #$fe
9BDC  18        CLC
9BDD  65 c0     ADC $c0
9BDF  85 c1     STA $c1
9BE1  20 d7 b1  JSR $b1d7
9BE4  a6 c0     LDX $c0
9BE6  b5 fd     LDA $fd,X
9BE8  d0 6c     BNE $9c56
9BEA  a9 fd     LDA #$fd
9BEC  18        CLC
9BED  65 c0     ADC $c0
9BEF  85 c1     STA $c1
9BF1  20 d7 b1  JSR $b1d7
9BF4  a6 c0     LDX $c0
9BF6  b5 fc     LDA $fc,X
9BF8  d0 5c     BNE $9c56
9BFA  a9 fc     LDA #$fc
9BFC  18        CLC
9BFD  65 c0     ADC $c0
9BFF  85 c1     STA $c1
9C01  20 d7 b1  JSR $b1d7
9C04  a6 c0     LDX $c0
9C06  b5 fb     LDA $fb,X
9C08  d0 4c     BNE $9c56
9C0A  a9 fb     LDA #$fb
9C0C  18        CLC
9C0D  65 c0     ADC $c0
9C0F  85 c1     STA $c1
9C11  20 d7 b1  JSR $b1d7
9C14  a6 c0     LDX $c0
9C16  b5 fa     LDA $fa,X
9C18  d0 3c     BNE $9c56
9C1A  a9 fa     LDA #$fa
9C1C  18        CLC
9C1D  65 c0     ADC $c0
9C1F  85 c1     STA $c1
9C21  20 d7 b1  JSR $b1d7
9C24  a6 c0     LDX $c0
9C26  b5 f9     LDA $f9,X
9C28  d0 2c     BNE $9c56
9C2A  a9 f9     LDA #$f9
9C2C  18        CLC
9C2D  65 c0     ADC $c0
9C2F  85 c1     STA $c1
9C31  20 d7 b1  JSR $b1d7
9C34  a6 c0     LDX $c0
9C36  b5 f8     LDA $f8,X
9C38  d0 1c     BNE $9c56
9C3A  a9 f8     LDA #$f8
9C3C  18        CLC
9C3D  65 c0     ADC $c0
9C3F  85 c1     STA $c1
9C41  20 d7 b1  JSR $b1d7
9C44  a6 c0     LDX $c0
9C46  b5 f7     LDA $f7,X
9C48  d0 0c     BNE $9c56
9C4A  a9 f7     LDA #$f7
9C4C  18        CLC
9C4D  65 c0     ADC $c0
9C4F  85 c1     STA $c1
9C51  20 d7 b1  JSR $b1d7
9C54  a6 c0     LDX $c0
9C56  b5 01     LDA $01,X
9C58  f0 05     BEQ $9c5f
9C5A  4c eb 9c  JMP $9ceb
9C5D  4a        LSR A
9C5E  b4 a9     LDY $a9,X
9C60  01 18     ORA ($18,X)
9C62  65 c0     ADC $c0
9C64  85 c1     STA $c1
9C66  20 d7 b1  JSR $b1d7
9C69  a6 c0     LDX $c0
9C6B  b5 02     LDA $02,X
9C6D  d0 7c     BNE $9ceb
9C6F  a9 02     LDA #$02
9C71  18        CLC
9C72  65 c0     ADC $c0
9C74  85 c1     STA $c1
9C76  20 d7 b1  JSR $b1d7
9C79  a6 c0     LDX $c0
9C7B  b5 03     LDA $03,X
9C7D  d0 6c     BNE $9ceb
9C7F  a9 03     LDA #$03
9C81  18        CLC
9C82  65 c0     ADC $c0
9C84  85 c1     STA $c1
9C86  20 d7 b1  JSR $b1d7
9C89  a6 c0     LDX $c0
9C8B  b5 04     LDA $04,X
9C8D  d0 5c     BNE $9ceb
9C8F  a9 04     LDA #$04
9C91  18        CLC
9C92  65 c0     ADC $c0
9C94  85 c1     STA $c1
9C96  20 d7 b1  JSR $b1d7
9C99  a6 c0     LDX $c0
9C9B  b5 05     LDA $05,X
9C9D  d0 4c     BNE $9ceb
9C9F  a9 05     LDA #$05
9CA1  18        CLC
9CA2  65 c0     ADC $c0
9CA4  85 c1     STA $c1
9CA6  20 d7 b1  JSR $b1d7
9CA9  a6 c0     LDX $c0
9CAB  b5 06     LDA $06,X
9CAD  d0 3c     BNE $9ceb
9CAF  a9 06     LDA #$06
9CB1  18        CLC
9CB2  65 c0     ADC $c0
9CB4  85 c1     STA $c1
9CB6  20 d7 b1  JSR $b1d7
9CB9  a6 c0     LDX $c0
9CBB  b5 07     LDA $07,X
9CBD  d0 2c     BNE $9ceb
9CBF  a9 07     LDA #$07
9CC1  18        CLC
9CC2  65 c0     ADC $c0
9CC4  85 c1     STA $c1
9CC6  20 d7 b1  JSR $b1d7
9CC9  a6 c0     LDX $c0
9CCB  b5 08     LDA $08,X
9CCD  d0 1c     BNE $9ceb
9CCF  a9 08     LDA #$08
9CD1  18        CLC
9CD2  65 c0     ADC $c0
9CD4  85 c1     STA $c1
9CD6  20 d7 b1  JSR $b1d7
9CD9  a6 c0     LDX $c0
9CDB  b5 09     LDA $09,X
9CDD  d0 0c     BNE $9ceb
9CDF  a9 09     LDA #$09
9CE1  18        CLC
9CE2  65 c0     ADC $c0
9CE4  85 c1     STA $c1
9CE6  20 d7 b1  JSR $b1d7
9CE9  a6 c0     LDX $c0
9CEB  b5 f4     LDA $f4,X
9CED  d0 7c     BNE $9d6b
9CEF  a9 f4     LDA #$f4
9CF1  18        CLC
9CF2  65 c0     ADC $c0
9CF4  85 c1     STA $c1
9CF6  20 d7 b1  JSR $b1d7
9CF9  a6 c0     LDX $c0
9CFB  b5 e8     LDA $e8,X
9CFD  d0 6c     BNE $9d6b
9CFF  a9 e8     LDA #$e8
9D01  18        CLC
9D02  65 c0     ADC $c0
9D04  85 c1     STA $c1
9D06  20 d7 b1  JSR $b1d7
9D09  a6 c0     LDX $c0
9D0B  b5 dc     LDA $dc,X
9D0D  d0 5c     BNE $9d6b
9D0F  a9 dc     LDA #$dc
9D11  18        CLC
9D12  65 c0     ADC $c0
9D14  85 c1     STA $c1
9D16  20 d7 b1  JSR $b1d7
9D19  a6 c0     LDX $c0
9D1B  b5 d0     LDA $d0,X
9D1D  d0 4c     BNE $9d6b
9D1F  a9 d0     LDA #$d0
9D21  18        CLC
9D22  65 c0     ADC $c0
9D24  85 c1     STA $c1
9D26  20 d7 b1  JSR $b1d7
9D29  a6 c0     LDX $c0
9D2B  b5 c4     LDA $c4,X
9D2D  d0 3c     BNE $9d6b
9D2F  a9 c4     LDA #$c4
9D31  18        CLC
9D32  65 c0     ADC $c0
9D34  85 c1     STA $c1
9D36  20 d7 b1  JSR $b1d7
9D39  a6 c0     LDX $c0
9D3B  b5 b8     LDA $b8,X
9D3D  d0 2c     BNE $9d6b
9D3F  a9 b8     LDA #$b8
9D41  18        CLC
9D42  65 c0     ADC $c0
9D44  85 c1     STA $c1
9D46  20 d7 b1  JSR $b1d7
9D49  a6 c0     LDX $c0
9D4B  b5 ac     LDA $ac,X
9D4D  d0 1c     BNE $9d6b
9D4F  a9 ac     LDA #$ac
9D51  18        CLC
9D52  65 c0     ADC $c0
9D54  85 c1     STA $c1
9D56  20 d7 b1  JSR $b1d7
9D59  a6 c0     LDX $c0
9D5B  b5 a0     LDA $a0,X
9D5D  d0 0c     BNE $9d6b
9D5F  a9 a0     LDA #$a0
9D61  18        CLC
9D62  65 c0     ADC $c0
9D64  85 c1     STA $c1
9D66  20 d7 b1  JSR $b1d7
9D69  a6 c0     LDX $c0
9D6B  b5 0c     LDA $0c,X
9D6D  d0 7c     BNE $9deb
9D6F  a9 0c     LDA #$0c
9D71  18        CLC
9D72  65 c0     ADC $c0
9D74  85 c1     STA $c1
9D76  20 d7 b1  JSR $b1d7
9D79  a6 c0     LDX $c0
9D7B  b5 18     LDA $18,X
9D7D  d0 6c     BNE $9deb
9D7F  a9 18     LDA #$18
9D81  18        CLC
9D82  65 c0     ADC $c0
9D84  85 c1     STA $c1
9D86  20 d7 b1  JSR $b1d7
9D89  a6 c0     LDX $c0
9D8B  b5 24     LDA $24,X
9D8D  d0 5c     BNE $9deb
9D8F  a9 24     LDA #$24
9D91  18        CLC
9D92  65 c0     ADC $c0
9D94  85 c1     STA $c1
9D96  20 d7 b1  JSR $b1d7
9D99  a6 c0     LDX $c0
9D9B  b5 30     LDA $30,X
9D9D  d0 4c     BNE $9deb
9D9F  a9 30     LDA #$30
9DA1  18        CLC
9DA2  65 c0     ADC $c0
9DA4  85 c1     STA $c1
9DA6  20 d7 b1  JSR $b1d7
9DA9  a6 c0     LDX $c0
9DAB  b5 3c     LDA $3c,X
9DAD  d0 3c     BNE $9deb
9DAF  a9 3c     LDA #$3c
9DB1  18        CLC
9DB2  65 c0     ADC $c0
9DB4  85 c1     STA $c1
9DB6  20 d7 b1  JSR $b1d7
9DB9  a6 c0     LDX $c0
9DBB  b5 48     LDA $48,X
9DBD  d0 2c     BNE $9deb
9DBF  a9 48     LDA #$48
9DC1  18        CLC
9DC2  65 c0     ADC $c0
9DC4  85 c1     STA $c1
9DC6  20 d7 b1  JSR $b1d7
9DC9  a6 c0     LDX $c0
9DCB  b5 54     LDA $54,X
9DCD  d0 1c     BNE $9deb
9DCF  a9 54     LDA #$54
9DD1  18        CLC
9DD2  65 c0     ADC $c0
9DD4  85 c1     STA $c1
9DD6  20 d7 b1  JSR $b1d7
9DD9  a6 c0     LDX $c0
9DDB  b5 60     LDA $60,X
9DDD  d0 0c     BNE $9deb
9DDF  a9 60     LDA #$60
9DE1  18        CLC
9DE2  65 c0     ADC $c0
9DE4  85 c1     STA $c1
9DE6  20 d7 b1  JSR $b1d7
9DE9  a6 c0     LDX $c0
9DEB  a6 99     LDX $99
9DED  10 04     BPL $9df3
9DEF  4c 85 9e  JMP $9e85
9DF2  11 86     ORA ($86),Y
9DF4  c0 b5     CPY #$b5
9DF6  ff        ???
9DF7  d0 20     BNE $9e19
9DF9  15 f2     ORA $f2,X
9DFB  d0 0c     BNE $9e09
9DFD  a9 f2     LDA #$f2
9DFF  18        CLC
9E00  65 c0     ADC $c0
9E02  85 c1     STA $c1
9E04  20 d7 b1  JSR $b1d7
9E07  a6 c0     LDX $c0
9E09  b5 0a     LDA $0a,X
9E0B  d0 0c     BNE $9e19
9E0D  a9 0a     LDA #$0a
9E0F  18        CLC
9E10  65 c0     ADC $c0
9E12  85 c1     STA $c1
9E14  20 d7 b1  JSR $b1d7
9E17  a6 c0     LDX $c0
9E19  b5 01     LDA $01,X
9E1B  d0 20     BNE $9e3d
9E1D  15 f6     ORA $f6,X
9E1F  d0 0c     BNE $9e2d
9E21  a9 f6     LDA #$f6
9E23  18        CLC
9E24  65 c0     ADC $c0
9E26  85 c1     STA $c1
9E28  20 d7 b1  JSR $b1d7
9E2B  a6 c0     LDX $c0
9E2D  b5 0e     LDA $0e,X
9E2F  d0 0c     BNE $9e3d
9E31  a9 0e     LDA #$0e
9E33  18        CLC
9E34  65 c0     ADC $c0
9E36  85 c1     STA $c1
9E38  20 d7 b1  JSR $b1d7
9E3B  a6 c0     LDX $c0
9E3D  b5 f4     LDA $f4,X
9E3F  d0 20     BNE $9e61
9E41  15 e7     ORA $e7,X
9E43  d0 0c     BNE $9e51
9E45  a9 e7     LDA #$e7
9E47  18        CLC
9E48  65 c0     ADC $c0
9E4A  85 c1     STA $c1
9E4C  20 d7 b1  JSR $b1d7
9E4F  a6 c0     LDX $c0
9E51  b5 e9     LDA $e9,X
9E53  d0 0c     BNE $9e61
9E55  a9 e9     LDA #$e9
9E57  18        CLC
9E58  65 c0     ADC $c0
9E5A  85 c1     STA $c1
9E5C  20 d7 b1  JSR $b1d7
9E5F  a6 c0     LDX $c0
9E61  b5 0c     LDA $0c,X
9E63  d0 20     BNE $9e85
9E65  15 17     ORA $17,X
9E67  d0 0c     BNE $9e75
9E69  a9 17     LDA #$17
9E6B  18        CLC
9E6C  65 c0     ADC $c0
9E6E  85 c1     STA $c1
9E70  20 d7 b1  JSR $b1d7
9E73  a6 c0     LDX $c0
9E75  b5 19     LDA $19,X
9E77  d0 0c     BNE $9e85
9E79  a9 19     LDA #$19
9E7B  18        CLC
9E7C  65 c0     ADC $c0
9E7E  85 c1     STA $c1
9E80  20 d7 b1  JSR $b1d7
9E83  a6 c0     LDX $c0
9E85  a6 9a     LDX $9a
9E87  10 04     BPL $9e8d
9E89  4c 1f 9f  JMP $9f1f
9E8C  11 86     ORA ($86),Y
9E8E  c0 b5     CPY #$b5
9E90  ff        ???
9E91  d0 20     BNE $9eb3
9E93  15 f2     ORA $f2,X
9E95  d0 0c     BNE $9ea3
9E97  a9 f2     LDA #$f2
9E99  18        CLC
9E9A  65 c0     ADC $c0
9E9C  85 c1     STA $c1
9E9E  20 d7 b1  JSR $b1d7
9EA1  a6 c0     LDX $c0
9EA3  b5 0a     LDA $0a,X
9EA5  d0 0c     BNE $9eb3
9EA7  a9 0a     LDA #$0a
9EA9  18        CLC
9EAA  65 c0     ADC $c0
9EAC  85 c1     STA $c1
9EAE  20 d7 b1  JSR $b1d7
9EB1  a6 c0     LDX $c0
9EB3  b5 01     LDA $01,X
9EB5  d0 20     BNE $9ed7
9EB7  15 f6     ORA $f6,X
9EB9  d0 0c     BNE $9ec7
9EBB  a9 f6     LDA #$f6
9EBD  18        CLC
9EBE  65 c0     ADC $c0
9EC0  85 c1     STA $c1
9EC2  20 d7 b1  JSR $b1d7
9EC5  a6 c0     LDX $c0
9EC7  b5 0e     LDA $0e,X
9EC9  d0 0c     BNE $9ed7
9ECB  a9 0e     LDA #$0e
9ECD  18        CLC
9ECE  65 c0     ADC $c0
9ED0  85 c1     STA $c1
9ED2  20 d7 b1  JSR $b1d7
9ED5  a6 c0     LDX $c0
9ED7  b5 f4     LDA $f4,X
9ED9  d0 20     BNE $9efb
9EDB  15 e7     ORA $e7,X
9EDD  d0 0c     BNE $9eeb
9EDF  a9 e7     LDA #$e7
9EE1  18        CLC
9EE2  65 c0     ADC $c0
9EE4  85 c1     STA $c1
9EE6  20 d7 b1  JSR $b1d7
9EE9  a6 c0     LDX $c0
9EEB  b5 e9     LDA $e9,X
9EED  d0 0c     BNE $9efb
9EEF  a9 e9     LDA #$e9
9EF1  18        CLC
9EF2  65 c0     ADC $c0
9EF4  85 c1     STA $c1
9EF6  20 d7 b1  JSR $b1d7
9EF9  a6 c0     LDX $c0
9EFB  b5 0c     LDA $0c,X
9EFD  d0 20     BNE $9f1f
9EFF  15 17     ORA $17,X
9F01  d0 0c     BNE $9f0f
9F03  a9 17     LDA #$17
9F05  18        CLC
9F06  65 c0     ADC $c0
9F08  85 c1     STA $c1
9F0A  20 d7 b1  JSR $b1d7
9F0D  a6 c0     LDX $c0
9F0F  b5 19     LDA $19,X
9F11  d0 0c     BNE $9f1f
9F13  a9 19     LDA #$19
9F15  18        CLC
9F16  65 c0     ADC $c0
9F18  85 c1     STA $c1
9F1A  20 d7 b1  JSR $b1d7
9F1D  a6 c0     LDX $c0
9F1F  a6 9b     LDX $9b
9F21  30 5a     BMI $9f7d
9F23  86 c0     STX $c0
9F25  ad 47 81  LDA $8147
9F28  3d 53 81  AND $8153,X
9F2B  15 f3     ORA $f3,X
9F2D  d0 0c     BNE $9f3b
9F2F  a9 f3     LDA #$f3
9F31  18        CLC
9F32  65 c0     ADC $c0
9F34  85 c1     STA $c1
9F36  20 d7 b1  JSR $b1d7
9F39  a6 c0     LDX $c0
9F3B  ad 47 81  LDA $8147
9F3E  3d 6b 81  AND $816b,X
9F41  15 0b     ORA $0b,X
9F43  d0 0c     BNE $9f51
9F45  a9 0b     LDA #$0b
9F47  18        CLC
9F48  65 c0     ADC $c0
9F4A  85 c1     STA $c1
9F4C  20 d7 b1  JSR $b1d7
9F4F  a6 c0     LDX $c0
9F51  ad 47 81  LDA $8147
9F54  3d 55 81  AND $8155,X
9F57  15 f5     ORA $f5,X
9F59  d0 0c     BNE $9f67
9F5B  a9 f5     LDA #$f5
9F5D  18        CLC
9F5E  65 c0     ADC $c0
9F60  85 c1     STA $c1
9F62  20 d7 b1  JSR $b1d7
9F65  a6 c0     LDX $c0
9F67  ad 47 81  LDA $8147
9F6A  3d 6d 81  AND $816d,X
9F6D  15 0d     ORA $0d,X
9F6F  d0 0c     BNE $9f7d
9F71  a9 0d     LDA #$0d
9F73  18        CLC
9F74  65 c0     ADC $c0
9F76  85 c1     STA $c1
9F78  20 d7 b1  JSR $b1d7
9F7B  a6 c0     LDX $c0
9F7D  a6 9c     LDX $9c
9F7F  30 5a     BMI $9fdb
9F81  86 c0     STX $c0
9F83  ad 48 81  LDA $8148
9F86  3d 53 81  AND $8153,X
9F89  15 f3     ORA $f3,X
9F8B  d0 0c     BNE $9f99
9F8D  a9 f3     LDA #$f3
9F8F  18        CLC
9F90  65 c0     ADC $c0
9F92  85 c1     STA $c1
9F94  20 d7 b1  JSR $b1d7
9F97  a6 c0     LDX $c0
9F99  ad 48 81  LDA $8148
9F9C  3d 6b 81  AND $816b,X
9F9F  15 0b     ORA $0b,X
9FA1  d0 0c     BNE $9faf
9FA3  a9 0b     LDA #$0b
9FA5  18        CLC
9FA6  65 c0     ADC $c0
9FA8  85 c1     STA $c1
9FAA  20 d7 b1  JSR $b1d7
9FAD  a6 c0     LDX $c0
9FAF  ad 48 81  LDA $8148
9FB2  3d 55 81  AND $8155,X
9FB5  15 f5     ORA $f5,X
9FB7  d0 0c     BNE $9fc5
9FB9  a9 f5     LDA #$f5
9FBB  18        CLC
9FBC  65 c0     ADC $c0
9FBE  85 c1     STA $c1
9FC0  20 d7 b1  JSR $b1d7
9FC3  a6 c0     LDX $c0
9FC5  ad 48 81  LDA $8148
9FC8  3d 6d 81  AND $816d,X
9FCB  15 0d     ORA $0d,X
9FCD  d0 0c     BNE $9fdb
9FCF  a9 0d     LDA #$0d
9FD1  18        CLC
9FD2  65 c0     ADC $c0
9FD4  85 c1     STA $c1
9FD6  20 d7 b1  JSR $b1d7
9FD9  a6 c0     LDX $c0
9FDB  a6 9d     LDX $9d
9FDD  30 62     BMI $a041
9FDF  86 c0     STX $c0
9FE1  ad 49 81  LDA $8149
9FE4  3d 46 81  AND $8146,X
9FE7  15 f3     ORA $f3,X
9FE9  15 e6     ORA $e6,X
9FEB  d0 0c     BNE $9ff9
9FED  a9 e6     LDA #$e6
9FEF  18        CLC
9FF0  65 c0     ADC $c0
9FF2  85 c1     STA $c1
9FF4  20 d7 b1  JSR $b1d7
9FF7  a6 c0     LDX $c0
9FF9  ad 49 81  LDA $8149
9FFC  3d 76 81  AND $8176,X
9FFF  15 0b     ORA $0b,X
A001  15 16     ORA $16,X
A003  d0 0c     BNE $a011
A005  a9 16     LDA #$16
A007  18        CLC
A008  65 c0     ADC $c0
A00A  85 c1     STA $c1
A00C  20 d7 b1  JSR $b1d7
A00F  a6 c0     LDX $c0
A011  ad 49 81  LDA $8149
A014  3d 4a 81  AND $814a,X
A017  15 f5     ORA $f5,X
A019  15 ea     ORA $ea,X
A01B  d0 0c     BNE $a029
A01D  a9 ea     LDA #$ea
A01F  18        CLC
A020  65 c0     ADC $c0
A022  85 c1     STA $c1
A024  20 d7 b1  JSR $b1d7
A027  a6 c0     LDX $c0
A029  ad 49 81  LDA $8149
A02C  3d 7a 81  AND $817a,X
A02F  15 0d     ORA $0d,X
A031  15 1a     ORA $1a,X
A033  d0 0c     BNE $a041
A035  a9 1a     LDA #$1a
A037  18        CLC
A038  65 c0     ADC $c0
A03A  85 c1     STA $c1
A03C  20 d7 b1  JSR $b1d7
A03F  a6 c0     LDX $c0
A041  a6 9e     LDX $9e
A043  30 62     BMI $a0a7
A045  86 c0     STX $c0
A047  ad 4a 81  LDA $814a
A04A  3d 46 81  AND $8146,X
A04D  15 f3     ORA $f3,X
A04F  15 e6     ORA $e6,X
A051  d0 0c     BNE $a05f
A053  a9 e6     LDA #$e6
A055  18        CLC
A056  65 c0     ADC $c0
A058  85 c1     STA $c1
A05A  20 d7 b1  JSR $b1d7
A05D  a6 c0     LDX $c0
A05F  ad 4a 81  LDA $814a
A062  3d 76 81  AND $8176,X
A065  15 0b     ORA $0b,X
A067  15 16     ORA $16,X
A069  d0 0c     BNE $a077
A06B  a9 16     LDA #$16
A06D  18        CLC
A06E  65 c0     ADC $c0
A070  85 c1     STA $c1
A072  20 d7 b1  JSR $b1d7
A075  a6 c0     LDX $c0
A077  ad 4a 81  LDA $814a
A07A  3d 4a 81  AND $814a,X
A07D  15 f5     ORA $f5,X
A07F  15 ea     ORA $ea,X
A081  d0 0c     BNE $a08f
A083  a9 ea     LDA #$ea
A085  18        CLC
A086  65 c0     ADC $c0
A088  85 c1     STA $c1
A08A  20 d7 b1  JSR $b1d7
A08D  a6 c0     LDX $c0
A08F  ad 4a 81  LDA $814a
A092  3d 7a 81  AND $817a,X
A095  15 0d     ORA $0d,X
A097  15 1a     ORA $1a,X
A099  d0 0c     BNE $a0a7
A09B  a9 1a     LDA #$1a
A09D  18        CLC
A09E  65 c0     ADC $c0
A0A0  85 c1     STA $c1
A0A2  20 d7 b1  JSR $b1d7
A0A5  a6 c0     LDX $c0
A0A7  a6 9f     LDX $9f
A0A9  30 44     BMI $a0ef
A0AB  86 c0     STX $c0
A0AD  ad 4b 81  LDA $814b
A0B0  3d 61 81  AND $8161,X
A0B3  15 01     ORA $01,X
A0B5  d0 0c     BNE $a0c3
A0B7  a9 01     LDA #$01
A0B9  18        CLC
A0BA  65 c0     ADC $c0
A0BC  85 c1     STA $c1
A0BE  20 d7 b1  JSR $b1d7
A0C1  a6 c0     LDX $c0
A0C3  ad 4b 81  LDA $814b
A0C6  3d 54 81  AND $8154,X
A0C9  15 f4     ORA $f4,X
A0CB  d0 0c     BNE $a0d9
A0CD  a9 f4     LDA #$f4
A0CF  18        CLC
A0D0  65 c0     ADC $c0
A0D2  85 c1     STA $c1
A0D4  20 d7 b1  JSR $b1d7
A0D7  a6 c0     LDX $c0
A0D9  ad 4b 81  LDA $814b
A0DC  3d 6c 81  AND $816c,X
A0DF  15 0c     ORA $0c,X
A0E1  d0 0c     BNE $a0ef
A0E3  a9 0c     LDA #$0c
A0E5  18        CLC
A0E6  65 c0     ADC $c0
A0E8  85 c1     STA $c1
A0EA  20 d7 b1  JSR $b1d7
A0ED  a6 c0     LDX $c0
A0EF  a6 a0     LDX $a0
A0F1  30 44     BMI $a137
A0F3  86 c0     STX $c0
A0F5  ad 4c 81  LDA $814c
A0F8  3d 61 81  AND $8161,X
A0FB  15 01     ORA $01,X
A0FD  d0 0c     BNE $a10b
A0FF  a9 01     LDA #$01
A101  18        CLC
A102  65 c0     ADC $c0
A104  85 c1     STA $c1
A106  20 d7 b1  JSR $b1d7
A109  a6 c0     LDX $c0
A10B  ad 4c 81  LDA $814c
A10E  3d 54 81  AND $8154,X
A111  15 f4     ORA $f4,X
A113  d0 0c     BNE $a121
A115  a9 f4     LDA #$f4
A117  18        CLC
A118  65 c0     ADC $c0
A11A  85 c1     STA $c1
A11C  20 d7 b1  JSR $b1d7
A11F  a6 c0     LDX $c0
A121  ad 4c 81  LDA $814c
A124  3d 6c 81  AND $816c,X
A127  15 0c     ORA $0c,X
A129  d0 0c     BNE $a137
A12B  a9 0c     LDA #$0c
A12D  18        CLC
A12E  65 c0     ADC $c0
A130  85 c1     STA $c1
A132  20 d7 b1  JSR $b1d7
A135  a6 c0     LDX $c0
A137  a6 a1     LDX $a1
A139  30 44     BMI $a17f
A13B  86 c0     STX $c0
A13D  ad 4d 81  LDA $814d
A140  3d 61 81  AND $8161,X
A143  15 01     ORA $01,X
A145  d0 0c     BNE $a153
A147  a9 01     LDA #$01
A149  18        CLC
A14A  65 c0     ADC $c0
A14C  85 c1     STA $c1
A14E  20 d7 b1  JSR $b1d7
A151  a6 c0     LDX $c0
A153  ad 4d 81  LDA $814d
A156  3d 54 81  AND $8154,X
A159  15 f4     ORA $f4,X
A15B  d0 0c     BNE $a169
A15D  a9 f4     LDA #$f4
A15F  18        CLC
A160  65 c0     ADC $c0
A162  85 c1     STA $c1
A164  20 d7 b1  JSR $b1d7
A167  a6 c0     LDX $c0
A169  ad 4d 81  LDA $814d
A16C  3d 6c 81  AND $816c,X
A16F  15 0c     ORA $0c,X
A171  d0 0c     BNE $a17f
A173  a9 0c     LDA #$0c
A175  18        CLC
A176  65 c0     ADC $c0
A178  85 c1     STA $c1
A17A  20 d7 b1  JSR $b1d7
A17D  a6 c0     LDX $c0
A17F  a6 a2     LDX $a2
A181  30 44     BMI $a1c7
A183  86 c0     STX $c0
A185  ad 4e 81  LDA $814e
A188  3d 61 81  AND $8161,X
A18B  15 01     ORA $01,X
A18D  d0 0c     BNE $a19b
A18F  a9 01     LDA #$01
A191  18        CLC
A192  65 c0     ADC $c0
A194  85 c1     STA $c1
A196  20 d7 b1  JSR $b1d7
A199  a6 c0     LDX $c0
A19B  ad 4e 81  LDA $814e
A19E  3d 54 81  AND $8154,X
A1A1  15 f4     ORA $f4,X
A1A3  d0 0c     BNE $a1b1
A1A5  a9 f4     LDA #$f4
A1A7  18        CLC
A1A8  65 c0     ADC $c0
A1AA  85 c1     STA $c1
A1AC  20 d7 b1  JSR $b1d7
A1AF  a6 c0     LDX $c0
A1B1  ad 4e 81  LDA $814e
A1B4  3d 6c 81  AND $816c,X
A1B7  15 0c     ORA $0c,X
A1B9  d0 0c     BNE $a1c7
A1BB  a9 0c     LDA #$0c
A1BD  18        CLC
A1BE  65 c0     ADC $c0
A1C0  85 c1     STA $c1
A1C2  20 d7 b1  JSR $b1d7
A1C5  a6 c0     LDX $c0
A1C7  a6 a3     LDX $a3
A1C9  30 44     BMI $a20f
A1CB  86 c0     STX $c0
A1CD  ad 4f 81  LDA $814f
A1D0  3d 61 81  AND $8161,X
A1D3  15 01     ORA $01,X
A1D5  d0 0c     BNE $a1e3
A1D7  a9 01     LDA #$01
A1D9  18        CLC
A1DA  65 c0     ADC $c0
A1DC  85 c1     STA $c1
A1DE  20 d7 b1  JSR $b1d7
A1E1  a6 c0     LDX $c0
A1E3  ad 4f 81  LDA $814f
A1E6  3d 54 81  AND $8154,X
A1E9  15 f4     ORA $f4,X
A1EB  d0 0c     BNE $a1f9
A1ED  a9 f4     LDA #$f4
A1EF  18        CLC
A1F0  65 c0     ADC $c0
A1F2  85 c1     STA $c1
A1F4  20 d7 b1  JSR $b1d7
A1F7  a6 c0     LDX $c0
A1F9  ad 4f 81  LDA $814f
A1FC  3d 6c 81  AND $816c,X
A1FF  15 0c     ORA $0c,X
A201  d0 0c     BNE $a20f
A203  a9 0c     LDA #$0c
A205  18        CLC
A206  65 c0     ADC $c0
A208  85 c1     STA $c1
A20A  20 d7 b1  JSR $b1d7
A20D  a6 c0     LDX $c0
A20F  60        RTS
A210  b4 e6     LDY $e6,X
A212  cc d0 02  CPY $02d0
A215  e6 cd     INC $cd
A217  ba        TSX
A218  8a        TXA
A219  a6 c6     LDX $c6
A21B  e0 0c     CPX #$0c
A21D  90 0c     BCC $a22b
A21F  a5 c8     LDA $c8
A221  9d 72 07  STA $0772,X
A224  a5 c9     LDA $c9
A226  9d f2 07  STA $07f2,X
A229  60        RTS
A22A  e0 9d     CPX #$9d
A22C  72        ???
A22D  05 bc     ORA $bc
A22F  74        ???
A230  b1 30     LDA ($30),Y
A232  05 a9     ORA $a9
A234  ff        ???
A235  99 00 04  STA $0400,Y
A238  a5 a4     LDA $a4
A23A  10 09     BPL $a245
A23C  a9 e0     LDA #$e0
A23E  e5 c6     SBC $c6
A240  9d f2 07  STA $07f2,X
A243  60        RTS
A244  d5 a9     CMP $a9,X
A246  f0 9d     BEQ $a1e5
A248  f2        ???
A249  07        ???
A24A  a9 00     LDA #$00
A24C  9d 72 07  STA $0772,X
A24F  bd c1 04  LDA $04c1,X
A252  85 c0     STA $c0
A254  a5 a4     LDA $a4
A256  85 c1     STA $c1
A258  20 49 80  JSR $8049
A25B  d0 09     BNE $a266
A25D  a9 e0     LDA #$e0
A25F  a6 c6     LDX $c6
A261  4c 9c a2  JMP $a29c
A264  00        BRK
A265  b9 a6 c6  LDA $c6a6,Y
A268  c6 cf     DEC $cf
A26A  10 2e     BPL $a29a
A26C  38        SEC
A26D  a5 c8     LDA $c8
A26F  fd 72 06  SBC $0672,X
A272  a5 c9     LDA $c9
A274  fd f2 06  SBC $06f2,X
A277  b0 17     BCS $a290
A279  38        SEC
A27A  bd 71 06  LDA $0671,X
A27D  e5 c8     SBC $c8
A27F  bd f1 06  LDA $06f1,X
A282  e5 c9     SBC $c9
A284  b0 99     BCS $a21f
A286  a5 c8     LDA $c8
A288  9d 72 06  STA $0672,X
A28B  a5 c9     LDA $c9
A28D  9d f2 06  STA $06f2,X
A290  a5 c8     LDA $c8
A292  9d 72 07  STA $0772,X
A295  a5 c9     LDA $c9
A297  9d f2 07  STA $07f2,X
A29A  a9 ff     LDA #$ff
A29C  9d f2 05  STA $05f2,X
A29F  e0 07     CPX #$07
A2A1  b0 2c     BCS $a2cf
A2A3  a9 ff     LDA #$ff
A2A5  9d 80 04  STA $0480,X
A2A8  a5 ce     LDA $ce
A2AA  f0 23     BEQ $a2cf
A2AC  bd 00 04  LDA $0400,X
A2AF  10 08     BPL $a2b9
A2B1  a9 00     LDA #$00
A2B3  85 ce     STA $ce
A2B5  4c cf a2  JMP $a2cf
A2B8  c1 85     CMP ($85,X)
A2BA  c0 bd     CPY #$bd
A2BC  08        PHP
A2BD  04        ???
A2BE  85 c1     STA $c1
A2C0  20 07 b6  JSR $b607
A2C3  a6 c6     LDX $c6
A2C5  a5 c0     LDA $c0
A2C7  9d 80 04  STA $0480,X
A2CA  a5 c1     LDA $c1
A2CC  9d 88 04  STA $0488,X
A2CF  bd c1 04  LDA $04c1,X
A2D2  85 c1     STA $c1
A2D4  a0 20     LDY #$20
A2D6  b9 84 00  LDA $0084,Y
A2D9  30 0e     BMI $a2e9
A2DB  85 c0     STA $c0
A2DD  98        TYA
A2DE  48        PHA
A2DF  20 49 80  JSR $8049
A2E2  d0 03     BNE $a2e7
A2E4  20 07 b6  JSR $b607
A2E7  68        PLA
A2E8  a8        TAY
A2E9  c8        INY
A2EA  c0 30     CPY #$30
A2EC  90 e8     BCC $a2d6
A2EE  a6 c6     LDX $c6
A2F0  e0 08     CPX #$08
A2F2  b0 69     BCS $a35d
A2F4  bc 90 04  LDY $0490,X
A2F7  30 64     BMI $a35d
A2F9  b9 00 00  LDA $0000,Y
A2FC  29 20     AND #$20
A2FE  f0 26     BEQ $a326
A300  84 c0     STY $c0
A302  bc 98 04  LDY $0498,X
A305  c4 c1     CPY $c1
A307  f0 1d     BEQ $a326
A309  b9 00 00  LDA $0000,Y
A30C  f0 08     BEQ $a316
A30E  29 20     AND #$20
A310  f0 08     BEQ $a31a
A312  4c 26 a3  JMP $a326
A315  a9 a5     LDA #$a5
A317  cf        ???
A318  30 0c     BMI $a326
A31A  84 c1     STY $c1
A31C  20 49 80  JSR $8049
A31F  d0 03     BNE $a324
A321  20 83 b5  JSR $b583
A324  a6 c6     LDX $c6
A326  fe f2 05  INC $05f2,X
A329  bc a0 04  LDY $04a0,X
A32C  30 2f     BMI $a35d
A32E  b9 00 00  LDA $0000,Y
A331  29 20     AND #$20
A333  f0 28     BEQ $a35d
A335  84 c0     STY $c0
A337  bd a8 04  LDA $04a8,X
A33A  dd c1 04  CMP $04c1,X
A33D  f0 1e     BEQ $a35d
A33F  a8        TAY
A340  b9 00 00  LDA $0000,Y
A343  f0 08     BEQ $a34d
A345  29 20     AND #$20
A347  f0 08     BEQ $a351
A349  4c 5d a3  JMP $a35d
A34C  bd a5 cf  LDA $cfa5,X
A34F  30 0c     BMI $a35d
A351  84 c1     STY $c1
A353  20 49 80  JSR $8049
A356  d0 03     BNE $a35b
A358  20 83 b5  JSR $b583
A35B  a6 c6     LDX $c6
A35D  fe f2 05  INC $05f2,X
A360  fe f2 05  INC $05f2,X
A363  a6 94     LDX $94
A365  30 03     BMI $a36a
A367  20 3b 90  JSR $903b
A36A  a6 95     LDX $95
A36C  30 03     BMI $a371
A36E  20 3b 90  JSR $903b
A371  a6 96     LDX $96
A373  30 03     BMI $a378
A375  20 3b 90  JSR $903b
A378  a6 c6     LDX $c6
A37A  a5 cf     LDA $cf
A37C  c9 fe     CMP #$fe
A37E  10 33     BPL $a3b3
A380  bd f2 05  LDA $05f2,X
A383  30 2e     BMI $a3b3
A385  bd c0 04  LDA $04c0,X
A388  dd c1 04  CMP $04c1,X
A38B  f0 23     BEQ $a3b0
A38D  85 c0     STA $c0
A38F  a0 03     LDY #$03
A391  b9 94 00  LDA $0094,Y
A394  30 15     BMI $a3ab
A396  dd c1 04  CMP $04c1,X
A399  f0 10     BEQ $a3ab
A39B  85 c1     STA $c1
A39D  98        TYA
A39E  48        PHA
A39F  20 49 80  JSR $8049
A3A2  d0 03     BNE $a3a7
A3A4  20 e3 b5  JSR $b5e3
A3A7  68        PLA
A3A8  a8        TAY
A3A9  a6 c6     LDX $c6
A3AB  c8        INY
A3AC  c0 10     CPY #$10
A3AE  90 e1     BCC $a391
A3B0  60        RTS
A3B1  ad ad a6  LDA $a6ad
A3B4  97        ???
A3B5  30 03     BMI $a3ba
A3B7  20 3b 90  JSR $903b
A3BA  a6 98     LDX $98
A3BC  30 03     BMI $a3c1
A3BE  20 3b 90  JSR $903b
A3C1  a6 99     LDX $99
A3C3  30 03     BMI $a3c8
A3C5  20 3b 90  JSR $903b
A3C8  a6 9a     LDX $9a
A3CA  30 03     BMI $a3cf
A3CC  20 3b 90  JSR $903b
A3CF  a6 9b     LDX $9b
A3D1  30 03     BMI $a3d6
A3D3  20 3b 90  JSR $903b
A3D6  a6 9c     LDX $9c
A3D8  30 03     BMI $a3dd
A3DA  20 3b 90  JSR $903b
A3DD  a6 9d     LDX $9d
A3DF  30 03     BMI $a3e4
A3E1  20 3b 90  JSR $903b
A3E4  a6 9e     LDX $9e
A3E6  30 03     BMI $a3eb
A3E8  20 3b 90  JSR $903b
A3EB  a6 9f     LDX $9f
A3ED  30 03     BMI $a3f2
A3EF  20 3b 90  JSR $903b
A3F2  a6 a0     LDX $a0
A3F4  30 03     BMI $a3f9
A3F6  20 3b 90  JSR $903b
A3F9  a6 a1     LDX $a1
A3FB  30 03     BMI $a400
A3FD  20 3b 90  JSR $903b
A400  a6 a2     LDX $a2
A402  30 03     BMI $a407
A404  20 3b 90  JSR $903b
A407  a6 a3     LDX $a3
A409  30 03     BMI $a40e
A40B  20 3b 90  JSR $903b
A40E  a6 c6     LDX $c6
A410  a5 cf     LDA $cf
A412  10 08     BPL $a41c
A414  bd f2 05  LDA $05f2,X
A417  30 03     BMI $a41c
A419  60        RTS
A41A  4e 5e a6  LSR $a65e
A41D  a4 30     LDY $30
A41F  5a        ???
A420  86 c0     STX $c0
A422  ad 50 81  LDA $8150
A425  3d 5f 81  AND $815f,X
A428  15 ff     ORA $ff,X
A42A  d0 0c     BNE $a438
A42C  a9 ff     LDA #$ff
A42E  18        CLC
A42F  65 c0     ADC $c0
A431  85 c1     STA $c1
A433  20 5f b5  JSR $b55f
A436  a6 c0     LDX $c0
A438  ad 50 81  LDA $8150
A43B  3d 61 81  AND $8161,X
A43E  15 01     ORA $01,X
A440  d0 0c     BNE $a44e
A442  a9 01     LDA #$01
A444  18        CLC
A445  65 c0     ADC $c0
A447  85 c1     STA $c1
A449  20 5f b5  JSR $b55f
A44C  a6 c0     LDX $c0
A44E  ad 50 81  LDA $8150
A451  3d 54 81  AND $8154,X
A454  15 f4     ORA $f4,X
A456  d0 0c     BNE $a464
A458  a9 f4     LDA #$f4
A45A  18        CLC
A45B  65 c0     ADC $c0
A45D  85 c1     STA $c1
A45F  20 5f b5  JSR $b55f
A462  a6 c0     LDX $c0
A464  ad 50 81  LDA $8150
A467  3d 6c 81  AND $816c,X
A46A  15 0c     ORA $0c,X
A46C  d0 0c     BNE $a47a
A46E  a9 0c     LDA #$0c
A470  18        CLC
A471  65 c0     ADC $c0
A473  85 c1     STA $c1
A475  20 5f b5  JSR $b55f
A478  a6 c0     LDX $c0
A47A  a6 a5     LDX $a5
A47C  10 05     BPL $a483
A47E  4c af a6  JMP $a6af
A481  ac 20 86  LDY $8620
A484  c0 b5     CPY #$b5
A486  ff        ???
A487  f0 05     BEQ $a48e
A489  4c 1a a5  JMP $a51a
A48C  4a        LSR A
A48D  b4 a9     LDY $a9,X
A48F  ff        ???
A490  18        CLC
A491  65 c0     ADC $c0
A493  85 c1     STA $c1
A495  20 5f b5  JSR $b55f
A498  a6 c0     LDX $c0
A49A  b5 fe     LDA $fe,X
A49C  d0 7c     BNE $a51a
A49E  a9 fe     LDA #$fe
A4A0  18        CLC
A4A1  65 c0     ADC $c0
A4A3  85 c1     STA $c1
A4A5  20 5f b5  JSR $b55f
A4A8  a6 c0     LDX $c0
A4AA  b5 fd     LDA $fd,X
A4AC  d0 6c     BNE $a51a
A4AE  a9 fd     LDA #$fd
A4B0  18        CLC
A4B1  65 c0     ADC $c0
A4B3  85 c1     STA $c1
A4B5  20 5f b5  JSR $b55f
A4B8  a6 c0     LDX $c0
A4BA  b5 fc     LDA $fc,X
A4BC  d0 5c     BNE $a51a
A4BE  a9 fc     LDA #$fc
A4C0  18        CLC
A4C1  65 c0     ADC $c0
A4C3  85 c1     STA $c1
A4C5  20 5f b5  JSR $b55f
A4C8  a6 c0     LDX $c0
A4CA  b5 fb     LDA $fb,X
A4CC  d0 4c     BNE $a51a
A4CE  a9 fb     LDA #$fb
A4D0  18        CLC
A4D1  65 c0     ADC $c0
A4D3  85 c1     STA $c1
A4D5  20 5f b5  JSR $b55f
A4D8  a6 c0     LDX $c0
A4DA  b5 fa     LDA $fa,X
A4DC  d0 3c     BNE $a51a
A4DE  a9 fa     LDA #$fa
A4E0  18        CLC
A4E1  65 c0     ADC $c0
A4E3  85 c1     STA $c1
A4E5  20 5f b5  JSR $b55f
A4E8  a6 c0     LDX $c0
A4EA  b5 f9     LDA $f9,X
A4EC  d0 2c     BNE $a51a
A4EE  a9 f9     LDA #$f9
A4F0  18        CLC
A4F1  65 c0     ADC $c0
A4F3  85 c1     STA $c1
A4F5  20 5f b5  JSR $b55f
A4F8  a6 c0     LDX $c0
A4FA  b5 f8     LDA $f8,X
A4FC  d0 1c     BNE $a51a
A4FE  a9 f8     LDA #$f8
A500  18        CLC
A501  65 c0     ADC $c0
A503  85 c1     STA $c1
A505  20 5f b5  JSR $b55f
A508  a6 c0     LDX $c0
A50A  b5 f7     LDA $f7,X
A50C  d0 0c     BNE $a51a
A50E  a9 f7     LDA #$f7
A510  18        CLC
A511  65 c0     ADC $c0
A513  85 c1     STA $c1
A515  20 5f b5  JSR $b55f
A518  a6 c0     LDX $c0
A51A  b5 01     LDA $01,X
A51C  f0 05     BEQ $a523
A51E  4c af a5  JMP $a5af
A521  4a        LSR A
A522  b4 a9     LDY $a9,X
A524  01 18     ORA ($18,X)
A526  65 c0     ADC $c0
A528  85 c1     STA $c1
A52A  20 5f b5  JSR $b55f
A52D  a6 c0     LDX $c0
A52F  b5 02     LDA $02,X
A531  d0 7c     BNE $a5af
A533  a9 02     LDA #$02
A535  18        CLC
A536  65 c0     ADC $c0
A538  85 c1     STA $c1
A53A  20 5f b5  JSR $b55f
A53D  a6 c0     LDX $c0
A53F  b5 03     LDA $03,X
A541  d0 6c     BNE $a5af
A543  a9 03     LDA #$03
A545  18        CLC
A546  65 c0     ADC $c0
A548  85 c1     STA $c1
A54A  20 5f b5  JSR $b55f
A54D  a6 c0     LDX $c0
A54F  b5 04     LDA $04,X
A551  d0 5c     BNE $a5af
A553  a9 04     LDA #$04
A555  18        CLC
A556  65 c0     ADC $c0
A558  85 c1     STA $c1
A55A  20 5f b5  JSR $b55f
A55D  a6 c0     LDX $c0
A55F  b5 05     LDA $05,X
A561  d0 4c     BNE $a5af
A563  a9 05     LDA #$05
A565  18        CLC
A566  65 c0     ADC $c0
A568  85 c1     STA $c1
A56A  20 5f b5  JSR $b55f
A56D  a6 c0     LDX $c0
A56F  b5 06     LDA $06,X
A571  d0 3c     BNE $a5af
A573  a9 06     LDA #$06
A575  18        CLC
A576  65 c0     ADC $c0
A578  85 c1     STA $c1
A57A  20 5f b5  JSR $b55f
A57D  a6 c0     LDX $c0
A57F  b5 07     LDA $07,X
A581  d0 2c     BNE $a5af
A583  a9 07     LDA #$07
A585  18        CLC
A586  65 c0     ADC $c0
A588  85 c1     STA $c1
A58A  20 5f b5  JSR $b55f
A58D  a6 c0     LDX $c0
A58F  b5 08     LDA $08,X
A591  d0 1c     BNE $a5af
A593  a9 08     LDA #$08
A595  18        CLC
A596  65 c0     ADC $c0
A598  85 c1     STA $c1
A59A  20 5f b5  JSR $b55f
A59D  a6 c0     LDX $c0
A59F  b5 09     LDA $09,X
A5A1  d0 0c     BNE $a5af
A5A3  a9 09     LDA #$09
A5A5  18        CLC
A5A6  65 c0     ADC $c0
A5A8  85 c1     STA $c1
A5AA  20 5f b5  JSR $b55f
A5AD  a6 c0     LDX $c0
A5AF  b5 f4     LDA $f4,X
A5B1  d0 7c     BNE $a62f
A5B3  a9 f4     LDA #$f4
A5B5  18        CLC
A5B6  65 c0     ADC $c0
A5B8  85 c1     STA $c1
A5BA  20 5f b5  JSR $b55f
A5BD  a6 c0     LDX $c0
A5BF  b5 e8     LDA $e8,X
A5C1  d0 6c     BNE $a62f
A5C3  a9 e8     LDA #$e8
A5C5  18        CLC
A5C6  65 c0     ADC $c0
A5C8  85 c1     STA $c1
A5CA  20 5f b5  JSR $b55f
A5CD  a6 c0     LDX $c0
A5CF  b5 dc     LDA $dc,X
A5D1  d0 5c     BNE $a62f
A5D3  a9 dc     LDA #$dc
A5D5  18        CLC
A5D6  65 c0     ADC $c0
A5D8  85 c1     STA $c1
A5DA  20 5f b5  JSR $b55f
A5DD  a6 c0     LDX $c0
A5DF  b5 d0     LDA $d0,X
A5E1  d0 4c     BNE $a62f
A5E3  a9 d0     LDA #$d0
A5E5  18        CLC
A5E6  65 c0     ADC $c0
A5E8  85 c1     STA $c1
A5EA  20 5f b5  JSR $b55f
A5ED  a6 c0     LDX $c0
A5EF  b5 c4     LDA $c4,X
A5F1  d0 3c     BNE $a62f
A5F3  a9 c4     LDA #$c4
A5F5  18        CLC
A5F6  65 c0     ADC $c0
A5F8  85 c1     STA $c1
A5FA  20 5f b5  JSR $b55f
A5FD  a6 c0     LDX $c0
A5FF  b5 b8     LDA $b8,X
A601  d0 2c     BNE $a62f
A603  a9 b8     LDA #$b8
A605  18        CLC
A606  65 c0     ADC $c0
A608  85 c1     STA $c1
A60A  20 5f b5  JSR $b55f
A60D  a6 c0     LDX $c0
A60F  b5 ac     LDA $ac,X
A611  d0 1c     BNE $a62f
A613  a9 ac     LDA #$ac
A615  18        CLC
A616  65 c0     ADC $c0
A618  85 c1     STA $c1
A61A  20 5f b5  JSR $b55f
A61D  a6 c0     LDX $c0
A61F  b5 a0     LDA $a0,X
A621  d0 0c     BNE $a62f
A623  a9 a0     LDA #$a0
A625  18        CLC
A626  65 c0     ADC $c0
A628  85 c1     STA $c1
A62A  20 5f b5  JSR $b55f
A62D  a6 c0     LDX $c0
A62F  b5 0c     LDA $0c,X
A631  d0 7c     BNE $a6af
A633  a9 0c     LDA #$0c
A635  18        CLC
A636  65 c0     ADC $c0
A638  85 c1     STA $c1
A63A  20 5f b5  JSR $b55f
A63D  a6 c0     LDX $c0
A63F  b5 18     LDA $18,X
A641  d0 6c     BNE $a6af
A643  a9 18     LDA #$18
A645  18        CLC
A646  65 c0     ADC $c0
A648  85 c1     STA $c1
A64A  20 5f b5  JSR $b55f
A64D  a6 c0     LDX $c0
A64F  b5 24     LDA $24,X
A651  d0 5c     BNE $a6af
A653  a9 24     LDA #$24
A655  18        CLC
A656  65 c0     ADC $c0
A658  85 c1     STA $c1
A65A  20 5f b5  JSR $b55f
A65D  a6 c0     LDX $c0
A65F  b5 30     LDA $30,X
A661  d0 4c     BNE $a6af
A663  a9 30     LDA #$30
A665  18        CLC
A666  65 c0     ADC $c0
A668  85 c1     STA $c1
A66A  20 5f b5  JSR $b55f
A66D  a6 c0     LDX $c0
A66F  b5 3c     LDA $3c,X
A671  d0 3c     BNE $a6af
A673  a9 3c     LDA #$3c
A675  18        CLC
A676  65 c0     ADC $c0
A678  85 c1     STA $c1
A67A  20 5f b5  JSR $b55f
A67D  a6 c0     LDX $c0
A67F  b5 48     LDA $48,X
A681  d0 2c     BNE $a6af
A683  a9 48     LDA #$48
A685  18        CLC
A686  65 c0     ADC $c0
A688  85 c1     STA $c1
A68A  20 5f b5  JSR $b55f
A68D  a6 c0     LDX $c0
A68F  b5 54     LDA $54,X
A691  d0 1c     BNE $a6af
A693  a9 54     LDA #$54
A695  18        CLC
A696  65 c0     ADC $c0
A698  85 c1     STA $c1
A69A  20 5f b5  JSR $b55f
A69D  a6 c0     LDX $c0
A69F  b5 60     LDA $60,X
A6A1  d0 0c     BNE $a6af
A6A3  a9 60     LDA #$60
A6A5  18        CLC
A6A6  65 c0     ADC $c0
A6A8  85 c1     STA $c1
A6AA  20 5f b5  JSR $b55f
A6AD  a6 c0     LDX $c0
A6AF  a6 a6     LDX $a6
A6B1  10 05     BPL $a6b8
A6B3  4c e4 a8  JMP $a8e4
A6B6  ac 20 86  LDY $8620
A6B9  c0 b5     CPY #$b5
A6BB  ff        ???
A6BC  f0 05     BEQ $a6c3
A6BE  4c 4f a7  JMP $a74f
A6C1  4a        LSR A
A6C2  b4 a9     LDY $a9,X
A6C4  ff        ???
A6C5  18        CLC
A6C6  65 c0     ADC $c0
A6C8  85 c1     STA $c1
A6CA  20 5f b5  JSR $b55f
A6CD  a6 c0     LDX $c0
A6CF  b5 fe     LDA $fe,X
A6D1  d0 7c     BNE $a74f
A6D3  a9 fe     LDA #$fe
A6D5  18        CLC
A6D6  65 c0     ADC $c0
A6D8  85 c1     STA $c1
A6DA  20 5f b5  JSR $b55f
A6DD  a6 c0     LDX $c0
A6DF  b5 fd     LDA $fd,X
A6E1  d0 6c     BNE $a74f
A6E3  a9 fd     LDA #$fd
A6E5  18        CLC
A6E6  65 c0     ADC $c0
A6E8  85 c1     STA $c1
A6EA  20 5f b5  JSR $b55f
A6ED  a6 c0     LDX $c0
A6EF  b5 fc     LDA $fc,X
A6F1  d0 5c     BNE $a74f
A6F3  a9 fc     LDA #$fc
A6F5  18        CLC
A6F6  65 c0     ADC $c0
A6F8  85 c1     STA $c1
A6FA  20 5f b5  JSR $b55f
A6FD  a6 c0     LDX $c0
A6FF  b5 fb     LDA $fb,X
A701  d0 4c     BNE $a74f
A703  a9 fb     LDA #$fb
A705  18        CLC
A706  65 c0     ADC $c0
A708  85 c1     STA $c1
A70A  20 5f b5  JSR $b55f
A70D  a6 c0     LDX $c0
A70F  b5 fa     LDA $fa,X
A711  d0 3c     BNE $a74f
A713  a9 fa     LDA #$fa
A715  18        CLC
A716  65 c0     ADC $c0
A718  85 c1     STA $c1
A71A  20 5f b5  JSR $b55f
A71D  a6 c0     LDX $c0
A71F  b5 f9     LDA $f9,X
A721  d0 2c     BNE $a74f
A723  a9 f9     LDA #$f9
A725  18        CLC
A726  65 c0     ADC $c0
A728  85 c1     STA $c1
A72A  20 5f b5  JSR $b55f
A72D  a6 c0     LDX $c0
A72F  b5 f8     LDA $f8,X
A731  d0 1c     BNE $a74f
A733  a9 f8     LDA #$f8
A735  18        CLC
A736  65 c0     ADC $c0
A738  85 c1     STA $c1
A73A  20 5f b5  JSR $b55f
A73D  a6 c0     LDX $c0
A73F  b5 f7     LDA $f7,X
A741  d0 0c     BNE $a74f
A743  a9 f7     LDA #$f7
A745  18        CLC
A746  65 c0     ADC $c0
A748  85 c1     STA $c1
A74A  20 5f b5  JSR $b55f
A74D  a6 c0     LDX $c0
A74F  b5 01     LDA $01,X
A751  f0 05     BEQ $a758
A753  4c e4 a7  JMP $a7e4
A756  4a        LSR A
A757  b4 a9     LDY $a9,X
A759  01 18     ORA ($18,X)
A75B  65 c0     ADC $c0
A75D  85 c1     STA $c1
A75F  20 5f b5  JSR $b55f
A762  a6 c0     LDX $c0
A764  b5 02     LDA $02,X
A766  d0 7c     BNE $a7e4
A768  a9 02     LDA #$02
A76A  18        CLC
A76B  65 c0     ADC $c0
A76D  85 c1     STA $c1
A76F  20 5f b5  JSR $b55f
A772  a6 c0     LDX $c0
A774  b5 03     LDA $03,X
A776  d0 6c     BNE $a7e4
A778  a9 03     LDA #$03
A77A  18        CLC
A77B  65 c0     ADC $c0
A77D  85 c1     STA $c1
A77F  20 5f b5  JSR $b55f
A782  a6 c0     LDX $c0
A784  b5 04     LDA $04,X
A786  d0 5c     BNE $a7e4
A788  a9 04     LDA #$04
A78A  18        CLC
A78B  65 c0     ADC $c0
A78D  85 c1     STA $c1
A78F  20 5f b5  JSR $b55f
A792  a6 c0     LDX $c0
A794  b5 05     LDA $05,X
A796  d0 4c     BNE $a7e4
A798  a9 05     LDA #$05
A79A  18        CLC
A79B  65 c0     ADC $c0
A79D  85 c1     STA $c1
A79F  20 5f b5  JSR $b55f
A7A2  a6 c0     LDX $c0
A7A4  b5 06     LDA $06,X
A7A6  d0 3c     BNE $a7e4
A7A8  a9 06     LDA #$06
A7AA  18        CLC
A7AB  65 c0     ADC $c0
A7AD  85 c1     STA $c1
A7AF  20 5f b5  JSR $b55f
A7B2  a6 c0     LDX $c0
A7B4  b5 07     LDA $07,X
A7B6  d0 2c     BNE $a7e4
A7B8  a9 07     LDA #$07
A7BA  18        CLC
A7BB  65 c0     ADC $c0
A7BD  85 c1     STA $c1
A7BF  20 5f b5  JSR $b55f
A7C2  a6 c0     LDX $c0
A7C4  b5 08     LDA $08,X
A7C6  d0 1c     BNE $a7e4
A7C8  a9 08     LDA #$08
A7CA  18        CLC
A7CB  65 c0     ADC $c0
A7CD  85 c1     STA $c1
A7CF  20 5f b5  JSR $b55f
A7D2  a6 c0     LDX $c0
A7D4  b5 09     LDA $09,X
A7D6  d0 0c     BNE $a7e4
A7D8  a9 09     LDA #$09
A7DA  18        CLC
A7DB  65 c0     ADC $c0
A7DD  85 c1     STA $c1
A7DF  20 5f b5  JSR $b55f
A7E2  a6 c0     LDX $c0
A7E4  b5 f4     LDA $f4,X
A7E6  d0 7c     BNE $a864
A7E8  a9 f4     LDA #$f4
A7EA  18        CLC
A7EB  65 c0     ADC $c0
A7ED  85 c1     STA $c1
A7EF  20 5f b5  JSR $b55f
A7F2  a6 c0     LDX $c0
A7F4  b5 e8     LDA $e8,X
A7F6  d0 6c     BNE $a864
A7F8  a9 e8     LDA #$e8
A7FA  18        CLC
A7FB  65 c0     ADC $c0
A7FD  85 c1     STA $c1
A7FF  20 5f b5  JSR $b55f
A802  a6 c0     LDX $c0
A804  b5 dc     LDA $dc,X
A806  d0 5c     BNE $a864
A808  a9 dc     LDA #$dc
A80A  18        CLC
A80B  65 c0     ADC $c0
A80D  85 c1     STA $c1
A80F  20 5f b5  JSR $b55f
A812  a6 c0     LDX $c0
A814  b5 d0     LDA $d0,X
A816  d0 4c     BNE $a864
A818  a9 d0     LDA #$d0
A81A  18        CLC
A81B  65 c0     ADC $c0
A81D  85 c1     STA $c1
A81F  20 5f b5  JSR $b55f
A822  a6 c0     LDX $c0
A824  b5 c4     LDA $c4,X
A826  d0 3c     BNE $a864
A828  a9 c4     LDA #$c4
A82A  18        CLC
A82B  65 c0     ADC $c0
A82D  85 c1     STA $c1
A82F  20 5f b5  JSR $b55f
A832  a6 c0     LDX $c0
A834  b5 b8     LDA $b8,X
A836  d0 2c     BNE $a864
A838  a9 b8     LDA #$b8
A83A  18        CLC
A83B  65 c0     ADC $c0
A83D  85 c1     STA $c1
A83F  20 5f b5  JSR $b55f
A842  a6 c0     LDX $c0
A844  b5 ac     LDA $ac,X
A846  d0 1c     BNE $a864
A848  a9 ac     LDA #$ac
A84A  18        CLC
A84B  65 c0     ADC $c0
A84D  85 c1     STA $c1
A84F  20 5f b5  JSR $b55f
A852  a6 c0     LDX $c0
A854  b5 a0     LDA $a0,X
A856  d0 0c     BNE $a864
A858  a9 a0     LDA #$a0
A85A  18        CLC
A85B  65 c0     ADC $c0
A85D  85 c1     STA $c1
A85F  20 5f b5  JSR $b55f
A862  a6 c0     LDX $c0
A864  b5 0c     LDA $0c,X
A866  d0 7c     BNE $a8e4
A868  a9 0c     LDA #$0c
A86A  18        CLC
A86B  65 c0     ADC $c0
A86D  85 c1     STA $c1
A86F  20 5f b5  JSR $b55f
A872  a6 c0     LDX $c0
A874  b5 18     LDA $18,X
A876  d0 6c     BNE $a8e4
A878  a9 18     LDA #$18
A87A  18        CLC
A87B  65 c0     ADC $c0
A87D  85 c1     STA $c1
A87F  20 5f b5  JSR $b55f
A882  a6 c0     LDX $c0
A884  b5 24     LDA $24,X
A886  d0 5c     BNE $a8e4
A888  a9 24     LDA #$24
A88A  18        CLC
A88B  65 c0     ADC $c0
A88D  85 c1     STA $c1
A88F  20 5f b5  JSR $b55f
A892  a6 c0     LDX $c0
A894  b5 30     LDA $30,X
A896  d0 4c     BNE $a8e4
A898  a9 30     LDA #$30
A89A  18        CLC
A89B  65 c0     ADC $c0
A89D  85 c1     STA $c1
A89F  20 5f b5  JSR $b55f
A8A2  a6 c0     LDX $c0
A8A4  b5 3c     LDA $3c,X
A8A6  d0 3c     BNE $a8e4
A8A8  a9 3c     LDA #$3c
A8AA  18        CLC
A8AB  65 c0     ADC $c0
A8AD  85 c1     STA $c1
A8AF  20 5f b5  JSR $b55f
A8B2  a6 c0     LDX $c0
A8B4  b5 48     LDA $48,X
A8B6  d0 2c     BNE $a8e4
A8B8  a9 48     LDA #$48
A8BA  18        CLC
A8BB  65 c0     ADC $c0
A8BD  85 c1     STA $c1
A8BF  20 5f b5  JSR $b55f
A8C2  a6 c0     LDX $c0
A8C4  b5 54     LDA $54,X
A8C6  d0 1c     BNE $a8e4
A8C8  a9 54     LDA #$54
A8CA  18        CLC
A8CB  65 c0     ADC $c0
A8CD  85 c1     STA $c1
A8CF  20 5f b5  JSR $b55f
A8D2  a6 c0     LDX $c0
A8D4  b5 60     LDA $60,X
A8D6  d0 0c     BNE $a8e4
A8D8  a9 60     LDA #$60
A8DA  18        CLC
A8DB  65 c0     ADC $c0
A8DD  85 c1     STA $c1
A8DF  20 5f b5  JSR $b55f
A8E2  a6 c0     LDX $c0
A8E4  a6 a7     LDX $a7
A8E6  10 05     BPL $a8ed
A8E8  4c 19 ab  JMP $ab19
A8EB  20 8d 86  JSR $868d
A8EE  c0 b5     CPY #$b5
A8F0  ff        ???
A8F1  f0 05     BEQ $a8f8
A8F3  4c 84 a9  JMP $a984
A8F6  4a        LSR A
A8F7  b4 a9     LDY $a9,X
A8F9  ff        ???
A8FA  18        CLC
A8FB  65 c0     ADC $c0
A8FD  85 c1     STA $c1
A8FF  20 5f b5  JSR $b55f
A902  a6 c0     LDX $c0
A904  b5 fe     LDA $fe,X
A906  d0 7c     BNE $a984
A908  a9 fe     LDA #$fe
A90A  18        CLC
A90B  65 c0     ADC $c0
A90D  85 c1     STA $c1
A90F  20 5f b5  JSR $b55f
A912  a6 c0     LDX $c0
A914  b5 fd     LDA $fd,X
A916  d0 6c     BNE $a984
A918  a9 fd     LDA #$fd
A91A  18        CLC
A91B  65 c0     ADC $c0
A91D  85 c1     STA $c1
A91F  20 5f b5  JSR $b55f
A922  a6 c0     LDX $c0
A924  b5 fc     LDA $fc,X
A926  d0 5c     BNE $a984
A928  a9 fc     LDA #$fc
A92A  18        CLC
A92B  65 c0     ADC $c0
A92D  85 c1     STA $c1
A92F  20 5f b5  JSR $b55f
A932  a6 c0     LDX $c0
A934  b5 fb     LDA $fb,X
A936  d0 4c     BNE $a984
A938  a9 fb     LDA #$fb
A93A  18        CLC
A93B  65 c0     ADC $c0
A93D  85 c1     STA $c1
A93F  20 5f b5  JSR $b55f
A942  a6 c0     LDX $c0
A944  b5 fa     LDA $fa,X
A946  d0 3c     BNE $a984
A948  a9 fa     LDA #$fa
A94A  18        CLC
A94B  65 c0     ADC $c0
A94D  85 c1     STA $c1
A94F  20 5f b5  JSR $b55f
A952  a6 c0     LDX $c0
A954  b5 f9     LDA $f9,X
A956  d0 2c     BNE $a984
A958  a9 f9     LDA #$f9
A95A  18        CLC
A95B  65 c0     ADC $c0
A95D  85 c1     STA $c1
A95F  20 5f b5  JSR $b55f
A962  a6 c0     LDX $c0
A964  b5 f8     LDA $f8,X
A966  d0 1c     BNE $a984
A968  a9 f8     LDA #$f8
A96A  18        CLC
A96B  65 c0     ADC $c0
A96D  85 c1     STA $c1
A96F  20 5f b5  JSR $b55f
A972  a6 c0     LDX $c0
A974  b5 f7     LDA $f7,X
A976  d0 0c     BNE $a984
A978  a9 f7     LDA #$f7
A97A  18        CLC
A97B  65 c0     ADC $c0
A97D  85 c1     STA $c1
A97F  20 5f b5  JSR $b55f
A982  a6 c0     LDX $c0
A984  b5 01     LDA $01,X
A986  f0 05     BEQ $a98d
A988  4c 19 aa  JMP $aa19
A98B  4a        LSR A
A98C  b4 a9     LDY $a9,X
A98E  01 18     ORA ($18,X)
A990  65 c0     ADC $c0
A992  85 c1     STA $c1
A994  20 5f b5  JSR $b55f
A997  a6 c0     LDX $c0
A999  b5 02     LDA $02,X
A99B  d0 7c     BNE $aa19
A99D  a9 02     LDA #$02
A99F  18        CLC
A9A0  65 c0     ADC $c0
A9A2  85 c1     STA $c1
A9A4  20 5f b5  JSR $b55f
A9A7  a6 c0     LDX $c0
A9A9  b5 03     LDA $03,X
A9AB  d0 6c     BNE $aa19
A9AD  a9 03     LDA #$03
A9AF  18        CLC
A9B0  65 c0     ADC $c0
A9B2  85 c1     STA $c1
A9B4  20 5f b5  JSR $b55f
A9B7  a6 c0     LDX $c0
A9B9  b5 04     LDA $04,X
A9BB  d0 5c     BNE $aa19
A9BD  a9 04     LDA #$04
A9BF  18        CLC
A9C0  65 c0     ADC $c0
A9C2  85 c1     STA $c1
A9C4  20 5f b5  JSR $b55f
A9C7  a6 c0     LDX $c0
A9C9  b5 05     LDA $05,X
A9CB  d0 4c     BNE $aa19
A9CD  a9 05     LDA #$05
A9CF  18        CLC
A9D0  65 c0     ADC $c0
A9D2  85 c1     STA $c1
A9D4  20 5f b5  JSR $b55f
A9D7  a6 c0     LDX $c0
A9D9  b5 06     LDA $06,X
A9DB  d0 3c     BNE $aa19
A9DD  a9 06     LDA #$06
A9DF  18        CLC
A9E0  65 c0     ADC $c0
A9E2  85 c1     STA $c1
A9E4  20 5f b5  JSR $b55f
A9E7  a6 c0     LDX $c0
A9E9  b5 07     LDA $07,X
A9EB  d0 2c     BNE $aa19
A9ED  a9 07     LDA #$07
A9EF  18        CLC
A9F0  65 c0     ADC $c0
A9F2  85 c1     STA $c1
A9F4  20 5f b5  JSR $b55f
A9F7  a6 c0     LDX $c0
A9F9  b5 08     LDA $08,X
A9FB  d0 1c     BNE $aa19
A9FD  a9 08     LDA #$08
A9FF  18        CLC
AA00  65 c0     ADC $c0
AA02  85 c1     STA $c1
AA04  20 5f b5  JSR $b55f
AA07  a6 c0     LDX $c0
AA09  b5 09     LDA $09,X
AA0B  d0 0c     BNE $aa19
AA0D  a9 09     LDA #$09
AA0F  18        CLC
AA10  65 c0     ADC $c0
AA12  85 c1     STA $c1
AA14  20 5f b5  JSR $b55f
AA17  a6 c0     LDX $c0
AA19  b5 f4     LDA $f4,X
AA1B  d0 7c     BNE $aa99
AA1D  a9 f4     LDA #$f4
AA1F  18        CLC
AA20  65 c0     ADC $c0
AA22  85 c1     STA $c1
AA24  20 5f b5  JSR $b55f
AA27  a6 c0     LDX $c0
AA29  b5 e8     LDA $e8,X
AA2B  d0 6c     BNE $aa99
AA2D  a9 e8     LDA #$e8
AA2F  18        CLC
AA30  65 c0     ADC $c0
AA32  85 c1     STA $c1
AA34  20 5f b5  JSR $b55f
AA37  a6 c0     LDX $c0
AA39  b5 dc     LDA $dc,X
AA3B  d0 5c     BNE $aa99
AA3D  a9 dc     LDA #$dc
AA3F  18        CLC
AA40  65 c0     ADC $c0
AA42  85 c1     STA $c1
AA44  20 5f b5  JSR $b55f
AA47  a6 c0     LDX $c0
AA49  b5 d0     LDA $d0,X
AA4B  d0 4c     BNE $aa99
AA4D  a9 d0     LDA #$d0
AA4F  18        CLC
AA50  65 c0     ADC $c0
AA52  85 c1     STA $c1
AA54  20 5f b5  JSR $b55f
AA57  a6 c0     LDX $c0
AA59  b5 c4     LDA $c4,X
AA5B  d0 3c     BNE $aa99
AA5D  a9 c4     LDA #$c4
AA5F  18        CLC
AA60  65 c0     ADC $c0
AA62  85 c1     STA $c1
AA64  20 5f b5  JSR $b55f
AA67  a6 c0     LDX $c0
AA69  b5 b8     LDA $b8,X
AA6B  d0 2c     BNE $aa99
AA6D  a9 b8     LDA #$b8
AA6F  18        CLC
AA70  65 c0     ADC $c0
AA72  85 c1     STA $c1
AA74  20 5f b5  JSR $b55f
AA77  a6 c0     LDX $c0
AA79  b5 ac     LDA $ac,X
AA7B  d0 1c     BNE $aa99
AA7D  a9 ac     LDA #$ac
AA7F  18        CLC
AA80  65 c0     ADC $c0
AA82  85 c1     STA $c1
AA84  20 5f b5  JSR $b55f
AA87  a6 c0     LDX $c0
AA89  b5 a0     LDA $a0,X
AA8B  d0 0c     BNE $aa99
AA8D  a9 a0     LDA #$a0
AA8F  18        CLC
AA90  65 c0     ADC $c0
AA92  85 c1     STA $c1
AA94  20 5f b5  JSR $b55f
AA97  a6 c0     LDX $c0
AA99  b5 0c     LDA $0c,X
AA9B  d0 7c     BNE $ab19
AA9D  a9 0c     LDA #$0c
AA9F  18        CLC
AAA0  65 c0     ADC $c0
AAA2  85 c1     STA $c1
AAA4  20 5f b5  JSR $b55f
AAA7  a6 c0     LDX $c0
AAA9  b5 18     LDA $18,X
AAAB  d0 6c     BNE $ab19
AAAD  a9 18     LDA #$18
AAAF  18        CLC
AAB0  65 c0     ADC $c0
AAB2  85 c1     STA $c1
AAB4  20 5f b5  JSR $b55f
AAB7  a6 c0     LDX $c0
AAB9  b5 24     LDA $24,X
AABB  d0 5c     BNE $ab19
AABD  a9 24     LDA #$24
AABF  18        CLC
AAC0  65 c0     ADC $c0
AAC2  85 c1     STA $c1
AAC4  20 5f b5  JSR $b55f
AAC7  a6 c0     LDX $c0
AAC9  b5 30     LDA $30,X
AACB  d0 4c     BNE $ab19
AACD  a9 30     LDA #$30
AACF  18        CLC
AAD0  65 c0     ADC $c0
AAD2  85 c1     STA $c1
AAD4  20 5f b5  JSR $b55f
AAD7  a6 c0     LDX $c0
AAD9  b5 3c     LDA $3c,X
AADB  d0 3c     BNE $ab19
AADD  a9 3c     LDA #$3c
AADF  18        CLC
AAE0  65 c0     ADC $c0
AAE2  85 c1     STA $c1
AAE4  20 5f b5  JSR $b55f
AAE7  a6 c0     LDX $c0
AAE9  b5 48     LDA $48,X
AAEB  d0 2c     BNE $ab19
AAED  a9 48     LDA #$48
AAEF  18        CLC
AAF0  65 c0     ADC $c0
AAF2  85 c1     STA $c1
AAF4  20 5f b5  JSR $b55f
AAF7  a6 c0     LDX $c0
AAF9  b5 54     LDA $54,X
AAFB  d0 1c     BNE $ab19
AAFD  a9 54     LDA #$54
AAFF  18        CLC
AB00  65 c0     ADC $c0
AB02  85 c1     STA $c1
AB04  20 5f b5  JSR $b55f
AB07  a6 c0     LDX $c0
AB09  b5 60     LDA $60,X
AB0B  d0 0c     BNE $ab19
AB0D  a9 60     LDA #$60
AB0F  18        CLC
AB10  65 c0     ADC $c0
AB12  85 c1     STA $c1
AB14  20 5f b5  JSR $b55f
AB17  a6 c0     LDX $c0
AB19  a6 a8     LDX $a8
AB1B  10 05     BPL $ab22
AB1D  4c 4e ad  JMP $ad4e
AB20  20 8d 86  JSR $868d
AB23  c0 b5     CPY #$b5
AB25  ff        ???
AB26  f0 05     BEQ $ab2d
AB28  4c b9 ab  JMP $abb9
AB2B  4a        LSR A
AB2C  b4 a9     LDY $a9,X
AB2E  ff        ???
AB2F  18        CLC
AB30  65 c0     ADC $c0
AB32  85 c1     STA $c1
AB34  20 5f b5  JSR $b55f
AB37  a6 c0     LDX $c0
AB39  b5 fe     LDA $fe,X
AB3B  d0 7c     BNE $abb9
AB3D  a9 fe     LDA #$fe
AB3F  18        CLC
AB40  65 c0     ADC $c0
AB42  85 c1     STA $c1
AB44  20 5f b5  JSR $b55f
AB47  a6 c0     LDX $c0
AB49  b5 fd     LDA $fd,X
AB4B  d0 6c     BNE $abb9
AB4D  a9 fd     LDA #$fd
AB4F  18        CLC
AB50  65 c0     ADC $c0
AB52  85 c1     STA $c1
AB54  20 5f b5  JSR $b55f
AB57  a6 c0     LDX $c0
AB59  b5 fc     LDA $fc,X
AB5B  d0 5c     BNE $abb9
AB5D  a9 fc     LDA #$fc
AB5F  18        CLC
AB60  65 c0     ADC $c0
AB62  85 c1     STA $c1
AB64  20 5f b5  JSR $b55f
AB67  a6 c0     LDX $c0
AB69  b5 fb     LDA $fb,X
AB6B  d0 4c     BNE $abb9
AB6D  a9 fb     LDA #$fb
AB6F  18        CLC
AB70  65 c0     ADC $c0
AB72  85 c1     STA $c1
AB74  20 5f b5  JSR $b55f
AB77  a6 c0     LDX $c0
AB79  b5 fa     LDA $fa,X
AB7B  d0 3c     BNE $abb9
AB7D  a9 fa     LDA #$fa
AB7F  18        CLC
AB80  65 c0     ADC $c0
AB82  85 c1     STA $c1
AB84  20 5f b5  JSR $b55f
AB87  a6 c0     LDX $c0
AB89  b5 f9     LDA $f9,X
AB8B  d0 2c     BNE $abb9
AB8D  a9 f9     LDA #$f9
AB8F  18        CLC
AB90  65 c0     ADC $c0
AB92  85 c1     STA $c1
AB94  20 5f b5  JSR $b55f
AB97  a6 c0     LDX $c0
AB99  b5 f8     LDA $f8,X
AB9B  d0 1c     BNE $abb9
AB9D  a9 f8     LDA #$f8
AB9F  18        CLC
ABA0  65 c0     ADC $c0
ABA2  85 c1     STA $c1
ABA4  20 5f b5  JSR $b55f
ABA7  a6 c0     LDX $c0
ABA9  b5 f7     LDA $f7,X
ABAB  d0 0c     BNE $abb9
ABAD  a9 f7     LDA #$f7
ABAF  18        CLC
ABB0  65 c0     ADC $c0
ABB2  85 c1     STA $c1
ABB4  20 5f b5  JSR $b55f
ABB7  a6 c0     LDX $c0
ABB9  b5 01     LDA $01,X
ABBB  f0 05     BEQ $abc2
ABBD  4c 4e ac  JMP $ac4e
ABC0  4a        LSR A
ABC1  b4 a9     LDY $a9,X
ABC3  01 18     ORA ($18,X)
ABC5  65 c0     ADC $c0
ABC7  85 c1     STA $c1
ABC9  20 5f b5  JSR $b55f
ABCC  a6 c0     LDX $c0
ABCE  b5 02     LDA $02,X
ABD0  d0 7c     BNE $ac4e
ABD2  a9 02     LDA #$02
ABD4  18        CLC
ABD5  65 c0     ADC $c0
ABD7  85 c1     STA $c1
ABD9  20 5f b5  JSR $b55f
ABDC  a6 c0     LDX $c0
ABDE  b5 03     LDA $03,X
ABE0  d0 6c     BNE $ac4e
ABE2  a9 03     LDA #$03
ABE4  18        CLC
ABE5  65 c0     ADC $c0
ABE7  85 c1     STA $c1
ABE9  20 5f b5  JSR $b55f
ABEC  a6 c0     LDX $c0
ABEE  b5 04     LDA $04,X
ABF0  d0 5c     BNE $ac4e
ABF2  a9 04     LDA #$04
ABF4  18        CLC
ABF5  65 c0     ADC $c0
ABF7  85 c1     STA $c1
ABF9  20 5f b5  JSR $b55f
ABFC  a6 c0     LDX $c0
ABFE  b5 05     LDA $05,X
AC00  d0 4c     BNE $ac4e
AC02  a9 05     LDA #$05
AC04  18        CLC
AC05  65 c0     ADC $c0
AC07  85 c1     STA $c1
AC09  20 5f b5  JSR $b55f
AC0C  a6 c0     LDX $c0
AC0E  b5 06     LDA $06,X
AC10  d0 3c     BNE $ac4e
AC12  a9 06     LDA #$06
AC14  18        CLC
AC15  65 c0     ADC $c0
AC17  85 c1     STA $c1
AC19  20 5f b5  JSR $b55f
AC1C  a6 c0     LDX $c0
AC1E  b5 07     LDA $07,X
AC20  d0 2c     BNE $ac4e
AC22  a9 07     LDA #$07
AC24  18        CLC
AC25  65 c0     ADC $c0
AC27  85 c1     STA $c1
AC29  20 5f b5  JSR $b55f
AC2C  a6 c0     LDX $c0
AC2E  b5 08     LDA $08,X
AC30  d0 1c     BNE $ac4e
AC32  a9 08     LDA #$08
AC34  18        CLC
AC35  65 c0     ADC $c0
AC37  85 c1     STA $c1
AC39  20 5f b5  JSR $b55f
AC3C  a6 c0     LDX $c0
AC3E  b5 09     LDA $09,X
AC40  d0 0c     BNE $ac4e
AC42  a9 09     LDA #$09
AC44  18        CLC
AC45  65 c0     ADC $c0
AC47  85 c1     STA $c1
AC49  20 5f b5  JSR $b55f
AC4C  a6 c0     LDX $c0
AC4E  b5 f4     LDA $f4,X
AC50  d0 7c     BNE $acce
AC52  a9 f4     LDA #$f4
AC54  18        CLC
AC55  65 c0     ADC $c0
AC57  85 c1     STA $c1
AC59  20 5f b5  JSR $b55f
AC5C  a6 c0     LDX $c0
AC5E  b5 e8     LDA $e8,X
AC60  d0 6c     BNE $acce
AC62  a9 e8     LDA #$e8
AC64  18        CLC
AC65  65 c0     ADC $c0
AC67  85 c1     STA $c1
AC69  20 5f b5  JSR $b55f
AC6C  a6 c0     LDX $c0
AC6E  b5 dc     LDA $dc,X
AC70  d0 5c     BNE $acce
AC72  a9 dc     LDA #$dc
AC74  18        CLC
AC75  65 c0     ADC $c0
AC77  85 c1     STA $c1
AC79  20 5f b5  JSR $b55f
AC7C  a6 c0     LDX $c0
AC7E  b5 d0     LDA $d0,X
AC80  d0 4c     BNE $acce
AC82  a9 d0     LDA #$d0
AC84  18        CLC
AC85  65 c0     ADC $c0
AC87  85 c1     STA $c1
AC89  20 5f b5  JSR $b55f
AC8C  a6 c0     LDX $c0
AC8E  b5 c4     LDA $c4,X
AC90  d0 3c     BNE $acce
AC92  a9 c4     LDA #$c4
AC94  18        CLC
AC95  65 c0     ADC $c0
AC97  85 c1     STA $c1
AC99  20 5f b5  JSR $b55f
AC9C  a6 c0     LDX $c0
AC9E  b5 b8     LDA $b8,X
ACA0  d0 2c     BNE $acce
ACA2  a9 b8     LDA #$b8
ACA4  18        CLC
ACA5  65 c0     ADC $c0
ACA7  85 c1     STA $c1
ACA9  20 5f b5  JSR $b55f
ACAC  a6 c0     LDX $c0
ACAE  b5 ac     LDA $ac,X
ACB0  d0 1c     BNE $acce
ACB2  a9 ac     LDA #$ac
ACB4  18        CLC
ACB5  65 c0     ADC $c0
ACB7  85 c1     STA $c1
ACB9  20 5f b5  JSR $b55f
ACBC  a6 c0     LDX $c0
ACBE  b5 a0     LDA $a0,X
ACC0  d0 0c     BNE $acce
ACC2  a9 a0     LDA #$a0
ACC4  18        CLC
ACC5  65 c0     ADC $c0
ACC7  85 c1     STA $c1
ACC9  20 5f b5  JSR $b55f
ACCC  a6 c0     LDX $c0
ACCE  b5 0c     LDA $0c,X
ACD0  d0 7c     BNE $ad4e
ACD2  a9 0c     LDA #$0c
ACD4  18        CLC
ACD5  65 c0     ADC $c0
ACD7  85 c1     STA $c1
ACD9  20 5f b5  JSR $b55f
ACDC  a6 c0     LDX $c0
ACDE  b5 18     LDA $18,X
ACE0  d0 6c     BNE $ad4e
ACE2  a9 18     LDA #$18
ACE4  18        CLC
ACE5  65 c0     ADC $c0
ACE7  85 c1     STA $c1
ACE9  20 5f b5  JSR $b55f
ACEC  a6 c0     LDX $c0
ACEE  b5 24     LDA $24,X
ACF0  d0 5c     BNE $ad4e
ACF2  a9 24     LDA #$24
ACF4  18        CLC
ACF5  65 c0     ADC $c0
ACF7  85 c1     STA $c1
ACF9  20 5f b5  JSR $b55f
ACFC  a6 c0     LDX $c0
ACFE  b5 30     LDA $30,X
AD00  d0 4c     BNE $ad4e
AD02  a9 30     LDA #$30
AD04  18        CLC
AD05  65 c0     ADC $c0
AD07  85 c1     STA $c1
AD09  20 5f b5  JSR $b55f
AD0C  a6 c0     LDX $c0
AD0E  b5 3c     LDA $3c,X
AD10  d0 3c     BNE $ad4e
AD12  a9 3c     LDA #$3c
AD14  18        CLC
AD15  65 c0     ADC $c0
AD17  85 c1     STA $c1
AD19  20 5f b5  JSR $b55f
AD1C  a6 c0     LDX $c0
AD1E  b5 48     LDA $48,X
AD20  d0 2c     BNE $ad4e
AD22  a9 48     LDA #$48
AD24  18        CLC
AD25  65 c0     ADC $c0
AD27  85 c1     STA $c1
AD29  20 5f b5  JSR $b55f
AD2C  a6 c0     LDX $c0
AD2E  b5 54     LDA $54,X
AD30  d0 1c     BNE $ad4e
AD32  a9 54     LDA #$54
AD34  18        CLC
AD35  65 c0     ADC $c0
AD37  85 c1     STA $c1
AD39  20 5f b5  JSR $b55f
AD3C  a6 c0     LDX $c0
AD3E  b5 60     LDA $60,X
AD40  d0 0c     BNE $ad4e
AD42  a9 60     LDA #$60
AD44  18        CLC
AD45  65 c0     ADC $c0
AD47  85 c1     STA $c1
AD49  20 5f b5  JSR $b55f
AD4C  a6 c0     LDX $c0
AD4E  a6 a9     LDX $a9
AD50  10 04     BPL $ad56
AD52  4c e8 ad  JMP $ade8
AD55  11 86     ORA ($86),Y
AD57  c0 b5     CPY #$b5
AD59  ff        ???
AD5A  d0 20     BNE $ad7c
AD5C  15 f2     ORA $f2,X
AD5E  d0 0c     BNE $ad6c
AD60  a9 f2     LDA #$f2
AD62  18        CLC
AD63  65 c0     ADC $c0
AD65  85 c1     STA $c1
AD67  20 5f b5  JSR $b55f
AD6A  a6 c0     LDX $c0
AD6C  b5 0a     LDA $0a,X
AD6E  d0 0c     BNE $ad7c
AD70  a9 0a     LDA #$0a
AD72  18        CLC
AD73  65 c0     ADC $c0
AD75  85 c1     STA $c1
AD77  20 5f b5  JSR $b55f
AD7A  a6 c0     LDX $c0
AD7C  b5 01     LDA $01,X
AD7E  d0 20     BNE $ada0
AD80  15 f6     ORA $f6,X
AD82  d0 0c     BNE $ad90
AD84  a9 f6     LDA #$f6
AD86  18        CLC
AD87  65 c0     ADC $c0
AD89  85 c1     STA $c1
AD8B  20 5f b5  JSR $b55f
AD8E  a6 c0     LDX $c0
AD90  b5 0e     LDA $0e,X
AD92  d0 0c     BNE $ada0
AD94  a9 0e     LDA #$0e
AD96  18        CLC
AD97  65 c0     ADC $c0
AD99  85 c1     STA $c1
AD9B  20 5f b5  JSR $b55f
AD9E  a6 c0     LDX $c0
ADA0  b5 f4     LDA $f4,X
ADA2  d0 20     BNE $adc4
ADA4  15 e7     ORA $e7,X
ADA6  d0 0c     BNE $adb4
ADA8  a9 e7     LDA #$e7
ADAA  18        CLC
ADAB  65 c0     ADC $c0
ADAD  85 c1     STA $c1
ADAF  20 5f b5  JSR $b55f
ADB2  a6 c0     LDX $c0
ADB4  b5 e9     LDA $e9,X
ADB6  d0 0c     BNE $adc4
ADB8  a9 e9     LDA #$e9
ADBA  18        CLC
ADBB  65 c0     ADC $c0
ADBD  85 c1     STA $c1
ADBF  20 5f b5  JSR $b55f
ADC2  a6 c0     LDX $c0
ADC4  b5 0c     LDA $0c,X
ADC6  d0 20     BNE $ade8
ADC8  15 17     ORA $17,X
ADCA  d0 0c     BNE $add8
ADCC  a9 17     LDA #$17
ADCE  18        CLC
ADCF  65 c0     ADC $c0
ADD1  85 c1     STA $c1
ADD3  20 5f b5  JSR $b55f
ADD6  a6 c0     LDX $c0
ADD8  b5 19     LDA $19,X
ADDA  d0 0c     BNE $ade8
ADDC  a9 19     LDA #$19
ADDE  18        CLC
ADDF  65 c0     ADC $c0
ADE1  85 c1     STA $c1
ADE3  20 5f b5  JSR $b55f
ADE6  a6 c0     LDX $c0
ADE8  a6 aa     LDX $aa
ADEA  10 04     BPL $adf0
ADEC  4c 82 ae  JMP $ae82
ADEF  11 86     ORA ($86),Y
ADF1  c0 b5     CPY #$b5
ADF3  ff        ???
ADF4  d0 20     BNE $ae16
ADF6  15 f2     ORA $f2,X
ADF8  d0 0c     BNE $ae06
ADFA  a9 f2     LDA #$f2
ADFC  18        CLC
ADFD  65 c0     ADC $c0
ADFF  85 c1     STA $c1
AE01  20 5f b5  JSR $b55f
AE04  a6 c0     LDX $c0
AE06  b5 0a     LDA $0a,X
AE08  d0 0c     BNE $ae16
AE0A  a9 0a     LDA #$0a
AE0C  18        CLC
AE0D  65 c0     ADC $c0
AE0F  85 c1     STA $c1
AE11  20 5f b5  JSR $b55f
AE14  a6 c0     LDX $c0
AE16  b5 01     LDA $01,X
AE18  d0 20     BNE $ae3a
AE1A  15 f6     ORA $f6,X
AE1C  d0 0c     BNE $ae2a
AE1E  a9 f6     LDA #$f6
AE20  18        CLC
AE21  65 c0     ADC $c0
AE23  85 c1     STA $c1
AE25  20 5f b5  JSR $b55f
AE28  a6 c0     LDX $c0
AE2A  b5 0e     LDA $0e,X
AE2C  d0 0c     BNE $ae3a
AE2E  a9 0e     LDA #$0e
AE30  18        CLC
AE31  65 c0     ADC $c0
AE33  85 c1     STA $c1
AE35  20 5f b5  JSR $b55f
AE38  a6 c0     LDX $c0
AE3A  b5 f4     LDA $f4,X
AE3C  d0 20     BNE $ae5e
AE3E  15 e7     ORA $e7,X
AE40  d0 0c     BNE $ae4e
AE42  a9 e7     LDA #$e7
AE44  18        CLC
AE45  65 c0     ADC $c0
AE47  85 c1     STA $c1
AE49  20 5f b5  JSR $b55f
AE4C  a6 c0     LDX $c0
AE4E  b5 e9     LDA $e9,X
AE50  d0 0c     BNE $ae5e
AE52  a9 e9     LDA #$e9
AE54  18        CLC
AE55  65 c0     ADC $c0
AE57  85 c1     STA $c1
AE59  20 5f b5  JSR $b55f
AE5C  a6 c0     LDX $c0
AE5E  b5 0c     LDA $0c,X
AE60  d0 20     BNE $ae82
AE62  15 17     ORA $17,X
AE64  d0 0c     BNE $ae72
AE66  a9 17     LDA #$17
AE68  18        CLC
AE69  65 c0     ADC $c0
AE6B  85 c1     STA $c1
AE6D  20 5f b5  JSR $b55f
AE70  a6 c0     LDX $c0
AE72  b5 19     LDA $19,X
AE74  d0 0c     BNE $ae82
AE76  a9 19     LDA #$19
AE78  18        CLC
AE79  65 c0     ADC $c0
AE7B  85 c1     STA $c1
AE7D  20 5f b5  JSR $b55f
AE80  a6 c0     LDX $c0
AE82  a6 ab     LDX $ab
AE84  30 5a     BMI $aee0
AE86  86 c0     STX $c0
AE88  ad 57 81  LDA $8157
AE8B  3d 53 81  AND $8153,X
AE8E  15 f3     ORA $f3,X
AE90  d0 0c     BNE $ae9e
AE92  a9 f3     LDA #$f3
AE94  18        CLC
AE95  65 c0     ADC $c0
AE97  85 c1     STA $c1
AE99  20 5f b5  JSR $b55f
AE9C  a6 c0     LDX $c0
AE9E  ad 57 81  LDA $8157
AEA1  3d 6b 81  AND $816b,X
AEA4  15 0b     ORA $0b,X
AEA6  d0 0c     BNE $aeb4
AEA8  a9 0b     LDA #$0b
AEAA  18        CLC
AEAB  65 c0     ADC $c0
AEAD  85 c1     STA $c1
AEAF  20 5f b5  JSR $b55f
AEB2  a6 c0     LDX $c0
AEB4  ad 57 81  LDA $8157
AEB7  3d 55 81  AND $8155,X
AEBA  15 f5     ORA $f5,X
AEBC  d0 0c     BNE $aeca
AEBE  a9 f5     LDA #$f5
AEC0  18        CLC
AEC1  65 c0     ADC $c0
AEC3  85 c1     STA $c1
AEC5  20 5f b5  JSR $b55f
AEC8  a6 c0     LDX $c0
AECA  ad 57 81  LDA $8157
AECD  3d 6d 81  AND $816d,X
AED0  15 0d     ORA $0d,X
AED2  d0 0c     BNE $aee0
AED4  a9 0d     LDA #$0d
AED6  18        CLC
AED7  65 c0     ADC $c0
AED9  85 c1     STA $c1
AEDB  20 5f b5  JSR $b55f
AEDE  a6 c0     LDX $c0
AEE0  a6 ac     LDX $ac
AEE2  30 5a     BMI $af3e
AEE4  86 c0     STX $c0
AEE6  ad 58 81  LDA $8158
AEE9  3d 53 81  AND $8153,X
AEEC  15 f3     ORA $f3,X
AEEE  d0 0c     BNE $aefc
AEF0  a9 f3     LDA #$f3
AEF2  18        CLC
AEF3  65 c0     ADC $c0
AEF5  85 c1     STA $c1
AEF7  20 5f b5  JSR $b55f
AEFA  a6 c0     LDX $c0
AEFC  ad 58 81  LDA $8158
AEFF  3d 6b 81  AND $816b,X
AF02  15 0b     ORA $0b,X
AF04  d0 0c     BNE $af12
AF06  a9 0b     LDA #$0b
AF08  18        CLC
AF09  65 c0     ADC $c0
AF0B  85 c1     STA $c1
AF0D  20 5f b5  JSR $b55f
AF10  a6 c0     LDX $c0
AF12  ad 58 81  LDA $8158
AF15  3d 55 81  AND $8155,X
AF18  15 f5     ORA $f5,X
AF1A  d0 0c     BNE $af28
AF1C  a9 f5     LDA #$f5
AF1E  18        CLC
AF1F  65 c0     ADC $c0
AF21  85 c1     STA $c1
AF23  20 5f b5  JSR $b55f
AF26  a6 c0     LDX $c0
AF28  ad 58 81  LDA $8158
AF2B  3d 6d 81  AND $816d,X
AF2E  15 0d     ORA $0d,X
AF30  d0 0c     BNE $af3e
AF32  a9 0d     LDA #$0d
AF34  18        CLC
AF35  65 c0     ADC $c0
AF37  85 c1     STA $c1
AF39  20 5f b5  JSR $b55f
AF3C  a6 c0     LDX $c0
AF3E  a6 ad     LDX $ad
AF40  30 62     BMI $afa4
AF42  86 c0     STX $c0
AF44  ad 59 81  LDA $8159
AF47  3d 46 81  AND $8146,X
AF4A  15 f3     ORA $f3,X
AF4C  15 e6     ORA $e6,X
AF4E  d0 0c     BNE $af5c
AF50  a9 e6     LDA #$e6
AF52  18        CLC
AF53  65 c0     ADC $c0
AF55  85 c1     STA $c1
AF57  20 5f b5  JSR $b55f
AF5A  a6 c0     LDX $c0
AF5C  ad 59 81  LDA $8159
AF5F  3d 76 81  AND $8176,X
AF62  15 0b     ORA $0b,X
AF64  15 16     ORA $16,X
AF66  d0 0c     BNE $af74
AF68  a9 16     LDA #$16
AF6A  18        CLC
AF6B  65 c0     ADC $c0
AF6D  85 c1     STA $c1
AF6F  20 5f b5  JSR $b55f
AF72  a6 c0     LDX $c0
AF74  ad 59 81  LDA $8159
AF77  3d 4a 81  AND $814a,X
AF7A  15 f5     ORA $f5,X
AF7C  15 ea     ORA $ea,X
AF7E  d0 0c     BNE $af8c
AF80  a9 ea     LDA #$ea
AF82  18        CLC
AF83  65 c0     ADC $c0
AF85  85 c1     STA $c1
AF87  20 5f b5  JSR $b55f
AF8A  a6 c0     LDX $c0
AF8C  ad 59 81  LDA $8159
AF8F  3d 7a 81  AND $817a,X
AF92  15 0d     ORA $0d,X
AF94  15 1a     ORA $1a,X
AF96  d0 0c     BNE $afa4
AF98  a9 1a     LDA #$1a
AF9A  18        CLC
AF9B  65 c0     ADC $c0
AF9D  85 c1     STA $c1
AF9F  20 5f b5  JSR $b55f
AFA2  a6 c0     LDX $c0
AFA4  a6 ae     LDX $ae
AFA6  30 62     BMI $b00a
AFA8  86 c0     STX $c0
AFAA  ad 5a 81  LDA $815a
AFAD  3d 46 81  AND $8146,X
AFB0  15 f3     ORA $f3,X
AFB2  15 e6     ORA $e6,X
AFB4  d0 0c     BNE $afc2
AFB6  a9 e6     LDA #$e6
AFB8  18        CLC
AFB9  65 c0     ADC $c0
AFBB  85 c1     STA $c1
AFBD  20 5f b5  JSR $b55f
AFC0  a6 c0     LDX $c0
AFC2  ad 5a 81  LDA $815a
AFC5  3d 76 81  AND $8176,X
AFC8  15 0b     ORA $0b,X
AFCA  15 16     ORA $16,X
AFCC  d0 0c     BNE $afda
AFCE  a9 16     LDA #$16
AFD0  18        CLC
AFD1  65 c0     ADC $c0
AFD3  85 c1     STA $c1
AFD5  20 5f b5  JSR $b55f
AFD8  a6 c0     LDX $c0
AFDA  ad 5a 81  LDA $815a
AFDD  3d 4a 81  AND $814a,X
AFE0  15 f5     ORA $f5,X
AFE2  15 ea     ORA $ea,X
AFE4  d0 0c     BNE $aff2
AFE6  a9 ea     LDA #$ea
AFE8  18        CLC
AFE9  65 c0     ADC $c0
AFEB  85 c1     STA $c1
AFED  20 5f b5  JSR $b55f
AFF0  a6 c0     LDX $c0
AFF2  ad 5a 81  LDA $815a
AFF5  3d 7a 81  AND $817a,X
AFF8  15 0d     ORA $0d,X
AFFA  15 1a     ORA $1a,X
AFFC  d0 0c     BNE $b00a
AFFE  a9 1a     LDA #$1a
B000  18        CLC
B001  65 c0     ADC $c0
B003  85 c1     STA $c1
B005  20 5f b5  JSR $b55f
B008  a6 c0     LDX $c0
B00A  a6 af     LDX $af
B00C  30 44     BMI $b052
B00E  86 c0     STX $c0
B010  ad 5b 81  LDA $815b
B013  3d 5f 81  AND $815f,X
B016  15 ff     ORA $ff,X
B018  d0 0c     BNE $b026
B01A  a9 ff     LDA #$ff
B01C  18        CLC
B01D  65 c0     ADC $c0
B01F  85 c1     STA $c1
B021  20 5f b5  JSR $b55f
B024  a6 c0     LDX $c0
B026  ad 5b 81  LDA $815b
B029  3d 54 81  AND $8154,X
B02C  15 f4     ORA $f4,X
B02E  d0 0c     BNE $b03c
B030  a9 f4     LDA #$f4
B032  18        CLC
B033  65 c0     ADC $c0
B035  85 c1     STA $c1
B037  20 5f b5  JSR $b55f
B03A  a6 c0     LDX $c0
B03C  ad 5b 81  LDA $815b
B03F  3d 6c 81  AND $816c,X
B042  15 0c     ORA $0c,X
B044  d0 0c     BNE $b052
B046  a9 0c     LDA #$0c
B048  18        CLC
B049  65 c0     ADC $c0
B04B  85 c1     STA $c1
B04D  20 5f b5  JSR $b55f
B050  a6 c0     LDX $c0
B052  a6 b0     LDX $b0
B054  30 44     BMI $b09a
B056  86 c0     STX $c0
B058  ad 5c 81  LDA $815c
B05B  3d 5f 81  AND $815f,X
B05E  15 ff     ORA $ff,X
B060  d0 0c     BNE $b06e
B062  a9 ff     LDA #$ff
B064  18        CLC
B065  65 c0     ADC $c0
B067  85 c1     STA $c1
B069  20 5f b5  JSR $b55f
B06C  a6 c0     LDX $c0
B06E  ad 5c 81  LDA $815c
B071  3d 54 81  AND $8154,X
B074  15 f4     ORA $f4,X
B076  d0 0c     BNE $b084
B078  a9 f4     LDA #$f4
B07A  18        CLC
B07B  65 c0     ADC $c0
B07D  85 c1     STA $c1
B07F  20 5f b5  JSR $b55f
B082  a6 c0     LDX $c0
B084  ad 5c 81  LDA $815c
B087  3d 6c 81  AND $816c,X
B08A  15 0c     ORA $0c,X
B08C  d0 0c     BNE $b09a
B08E  a9 0c     LDA #$0c
B090  18        CLC
B091  65 c0     ADC $c0
B093  85 c1     STA $c1
B095  20 5f b5  JSR $b55f
B098  a6 c0     LDX $c0
B09A  a6 b1     LDX $b1
B09C  30 44     BMI $b0e2
B09E  86 c0     STX $c0
B0A0  ad 5d 81  LDA $815d
B0A3  3d 5f 81  AND $815f,X
B0A6  15 ff     ORA $ff,X
B0A8  d0 0c     BNE $b0b6
B0AA  a9 ff     LDA #$ff
B0AC  18        CLC
B0AD  65 c0     ADC $c0
B0AF  85 c1     STA $c1
B0B1  20 5f b5  JSR $b55f
B0B4  a6 c0     LDX $c0
B0B6  ad 5d 81  LDA $815d
B0B9  3d 54 81  AND $8154,X
B0BC  15 f4     ORA $f4,X
B0BE  d0 0c     BNE $b0cc
B0C0  a9 f4     LDA #$f4
B0C2  18        CLC
B0C3  65 c0     ADC $c0
B0C5  85 c1     STA $c1
B0C7  20 5f b5  JSR $b55f
B0CA  a6 c0     LDX $c0
B0CC  ad 5d 81  LDA $815d
B0CF  3d 6c 81  AND $816c,X
B0D2  15 0c     ORA $0c,X
B0D4  d0 0c     BNE $b0e2
B0D6  a9 0c     LDA #$0c
B0D8  18        CLC
B0D9  65 c0     ADC $c0
B0DB  85 c1     STA $c1
B0DD  20 5f b5  JSR $b55f
B0E0  a6 c0     LDX $c0
B0E2  a6 b2     LDX $b2
B0E4  30 44     BMI $b12a
B0E6  86 c0     STX $c0
B0E8  ad 5e 81  LDA $815e
B0EB  3d 5f 81  AND $815f,X
B0EE  15 ff     ORA $ff,X
B0F0  d0 0c     BNE $b0fe
B0F2  a9 ff     LDA #$ff
B0F4  18        CLC
B0F5  65 c0     ADC $c0
B0F7  85 c1     STA $c1
B0F9  20 5f b5  JSR $b55f
B0FC  a6 c0     LDX $c0
B0FE  ad 5e 81  LDA $815e
B101  3d 54 81  AND $8154,X
B104  15 f4     ORA $f4,X
B106  d0 0c     BNE $b114
B108  a9 f4     LDA #$f4
B10A  18        CLC
B10B  65 c0     ADC $c0
B10D  85 c1     STA $c1
B10F  20 5f b5  JSR $b55f
B112  a6 c0     LDX $c0
B114  ad 5e 81  LDA $815e
B117  3d 6c 81  AND $816c,X
B11A  15 0c     ORA $0c,X
B11C  d0 0c     BNE $b12a
B11E  a9 0c     LDA #$0c
B120  18        CLC
B121  65 c0     ADC $c0
B123  85 c1     STA $c1
B125  20 5f b5  JSR $b55f
B128  a6 c0     LDX $c0
B12A  a6 b3     LDX $b3
B12C  30 44     BMI $b172
B12E  86 c0     STX $c0
B130  ad 5f 81  LDA $815f
B133  3d 5f 81  AND $815f,X
B136  15 ff     ORA $ff,X
B138  d0 0c     BNE $b146
B13A  a9 ff     LDA #$ff
B13C  18        CLC
B13D  65 c0     ADC $c0
B13F  85 c1     STA $c1
B141  20 5f b5  JSR $b55f
B144  a6 c0     LDX $c0
B146  ad 5f 81  LDA $815f
B149  3d 54 81  AND $8154,X
B14C  15 f4     ORA $f4,X
B14E  d0 0c     BNE $b15c
B150  a9 f4     LDA #$f4
B152  18        CLC
B153  65 c0     ADC $c0
B155  85 c1     STA $c1
B157  20 5f b5  JSR $b55f
B15A  a6 c0     LDX $c0
B15C  ad 5f 81  LDA $815f
B15F  3d 6c 81  AND $816c,X
B162  15 0c     ORA $0c,X
B164  d0 0c     BNE $b172
B166  a9 0c     LDA #$0c
B168  18        CLC
B169  65 c0     ADC $c0
B16B  85 c1     STA $c1
B16D  20 5f b5  JSR $b55f
B170  a6 c0     LDX $c0
B172  60        RTS
B173  b4 00     LDY $00,X
B175  10 20     BPL $b197
B177  30 40     BMI $b1b9
B179  50 60     BVC $b1db
B17B  70 ff     BVS $b17c
B17D  ff        ???
B17E  ff        ???
B17F  ff        ???
B180  ff        ???
B181  ff        ???
B182  ff        ???
B183  ff        ???
B184  ff        ???
B185  ff        ???
B186  ff        ???
B187  ff        ???
B188  ff        ???
B189  ff        ???
B18A  ff        ???
B18B  ff        ???
B18C  a5 c1     LDA $c1
B18E  48        PHA
B18F  bd b1 04  LDA $04b1,X
B192  bc c1 04  LDY $04c1,X
B195  aa        TAX
B196  b9 00 00  LDA $0000,Y
B199  95 00     STA $00,X
B19B  a9 00     LDA #$00
B19D  99 00 00  STA $0000,Y
B1A0  86 c1     STX $c1
B1A2  20 49 80  JSR $8049
B1A5  f0 19     BEQ $b1c0
B1A7  a6 c6     LDX $c6
B1A9  bd b1 04  LDA $04b1,X
B1AC  bc c1 04  LDY $04c1,X
B1AF  aa        TAX
B1B0  b5 00     LDA $00,X
B1B2  99 00 00  STA $0000,Y
B1B5  a9 00     LDA #$00
B1B7  95 00     STA $00,X
B1B9  68        PLA
B1BA  85 c1     STA $c1
B1BC  4c 81 b2  JMP $b281
B1BF  a0 a6     LDY #$a6
B1C1  c6 bd     DEC $bd
B1C3  b1 04     LDA ($04),Y
B1C5  bc c1 04  LDY $04c1,X
B1C8  aa        TAX
B1C9  b5 00     LDA $00,X
B1CB  99 00 00  STA $0000,Y
B1CE  a9 00     LDA #$00
B1D0  95 00     STA $00,X
B1D2  68        PLA
B1D3  85 c1     STA $c1
B1D5  60        RTS
B1D6  20 a6 c6  JSR $c6a6
B1D9  e0 08     CPX #$08
B1DB  b0 20     BCS $b1fd
B1DD  bd 98 04  LDA $0498,X
B1E0  c5 c1     CMP $c1
B1E2  d0 07     BNE $b1eb
B1E4  bd 90 04  LDA $0490,X
B1E7  c5 c0     CMP $c0
B1E9  f0 0e     BEQ $b1f9
B1EB  bd a8 04  LDA $04a8,X
B1EE  c5 c1     CMP $c1
B1F0  d0 0b     BNE $b1fd
B1F2  bd a0 04  LDA $04a0,X
B1F5  c5 c0     CMP $c0
B1F7  d0 04     BNE $b1fd
B1F9  60        RTS
B1FA  b4 a6     LDY $a6,X
B1FC  c6 bd     DEC $bd
B1FE  c0 04     CPY #$04
B200  c5 c0     CMP $c0
B202  d0 7d     BNE $b281
B204  bd b0 04  LDA $04b0,X
B207  c5 c1     CMP $c1
B209  d0 76     BNE $b281
B20B  bd d0 04  LDA $04d0,X
B20E  d0 71     BNE $b281
B210  bd d1 04  LDA $04d1,X
B213  d0 6c     BNE $b281
B215  bc c1 04  LDY $04c1,X
B218  b9 00 00  LDA $0000,Y
B21B  a8        TAY
B21C  b9 ba 81  LDA $81ba,Y
B21F  29 c8     AND #$c8
B221  d0 08     BNE $b22b
B223  bd f2 06  LDA $06f2,X
B226  30 32     BMI $b25a
B228  4c 8c b1  JMP $b18c
B22B  29 80     AND #$80
B22D  d0 13     BNE $b242
B22F  38        SEC
B230  bd c1 04  LDA $04c1,X
B233  fd b1 04  SBC $04b1,X
B236  c9 01     CMP #$01
B238  f0 47     BEQ $b281
B23A  bd f2 06  LDA $06f2,X
B23D  30 1b     BMI $b25a
B23F  4c 8c b1  JMP $b18c
B242  38        SEC
B243  bd b1 04  LDA $04b1,X
B246  fd c1 04  SBC $04c1,X
B249  a8        TAY
B24A  b9 54 84  LDA $8454,Y
B24D  18        CLC
B24E  7d c1 04  ADC $04c1,X
B251  a8        TAY
B252  b9 00 00  LDA $0000,Y
B255  f0 e3     BEQ $b23a
B257  4c 81 b2  JMP $b281
B25A  60        RTS
B25B  a6 c6     LDX $c6
B25D  e0 08     CPX #$08
B25F  b0 20     BCS $b281
B261  bd 98 04  LDA $0498,X
B264  c5 c1     CMP $c1
B266  d0 07     BNE $b26f
B268  bd 90 04  LDA $0490,X
B26B  c5 c0     CMP $c0
B26D  f0 0e     BEQ $b27d
B26F  bd a8 04  LDA $04a8,X
B272  c5 c1     CMP $c1
B274  d0 0b     BNE $b281
B276  bd a0 04  LDA $04a0,X
B279  c5 c0     CMP $c0
B27B  d0 04     BNE $b281
B27D  60        RTS
B27E  bd a6 c6  LDA $c6a6,X
B281  e0 07     CPX #$07
B283  b0 13     BCS $b298
B285  bd 80 04  LDA $0480,X
B288  30 0e     BMI $b298
B28A  c5 c0     CMP $c0
B28C  d0 0e     BNE $b29c
B28E  bd 88 04  LDA $0488,X
B291  c5 c1     CMP $c1
B293  d0 07     BNE $b29c
B295  60        RTS
B296  c8        INY
B297  ac 4c 92  LDY $924c
B29A  b3        ???
B29B  4c 38 bd  JMP $bd38
B29E  72        ???
B29F  07        ???
B2A0  fd 72 06  SBC $0672,X
B2A3  bd f2 07  LDA $07f2,X
B2A6  fd f2 06  SBC $06f2,X
B2A9  90 ed     BCC $b298
B2AB  bd 72 06  LDA $0672,X
B2AE  18        CLC
B2AF  69 01     ADC #$01
B2B1  9d 73 06  STA $0673,X
B2B4  bd f2 06  LDA $06f2,X
B2B7  69 00     ADC #$00
B2B9  9d f3 06  STA $06f3,X
B2BC  a6 c6     LDX $c6
B2BE  a5 c8     LDA $c8
B2C0  9d e2 04  STA $04e2,X
B2C3  a5 c9     LDA $c9
B2C5  9d f2 04  STA $04f2,X
B2C8  a5 c0     LDA $c0
B2CA  9d b2 04  STA $04b2,X
B2CD  a5 c1     LDA $c1
B2CF  9d c2 04  STA $04c2,X
B2D2  a8        TAY
B2D3  b9 00 00  LDA $0000,Y
B2D6  9d d2 04  STA $04d2,X
B2D9  f0 22     BEQ $b2fd
B2DB  aa        TAX
B2DC  a9 ff     LDA #$ff
B2DE  95 84     STA $84,X
B2E0  bd bf 88  LDA $88bf,X
B2E3  85 ca     STA $ca
B2E5  bd df 88  LDA $88df,X
B2E8  85 cb     STA $cb
B2EA  a5 c8     LDA $c8
B2EC  18        CLC
B2ED  71 ca     ADC ($ca),Y
B2EF  90 02     BCC $b2f3
B2F1  e6 c9     INC $c9
B2F3  85 c8     STA $c8
B2F5  a5 c9     LDA $c9
B2F7  18        CLC
B2F8  7d ff 88  ADC $88ff,X
B2FB  85 c9     STA $c9
B2FD  a6 c0     LDX $c0
B2FF  b5 00     LDA $00,X
B301  99 00 00  STA $0000,Y
B304  aa        TAX
B305  94 84     STY $84,X
B307  bd bf 88  LDA $88bf,X
B30A  85 ca     STA $ca
B30C  bd df 88  LDA $88df,X
B30F  85 cb     STA $cb
B311  a5 c8     LDA $c8
B313  18        CLC
B314  71 ca     ADC ($ca),Y
B316  90 02     BCC $b31a
B318  e6 c9     INC $c9
B31A  a4 c0     LDY $c0
B31C  a2 00     LDX #$00
B31E  96 00     STX $00,Y
B320  38        SEC
B321  f1 ca     SBC ($ca),Y
B323  b0 02     BCS $b327
B325  c6 c9     DEC $c9
B327  85 c8     STA $c8
B329  a6 c6     LDX $c6
B32B  bd f2 05  LDA $05f2,X
B32E  c9 f0     CMP #$f0
B330  10 16     BPL $b348
B332  bd c1 04  LDA $04c1,X
B335  c5 c1     CMP $c1
B337  f0 0f     BEQ $b348
B339  85 c0     STA $c0
B33B  a5 a4     LDA $a4
B33D  30 09     BMI $b348
B33F  a5 94     LDA $94
B341  85 c1     STA $c1
B343  20 49 80  JSR $8049
B346  f0 22     BEQ $b36a
B348  e6 c6     INC $c6
B34A  a5 cf     LDA $cf
B34C  48        PHA
B34D  20 11 a2  JSR $a211
B350  68        PLA
B351  85 cf     STA $cf
B353  c6 c6     DEC $c6
B355  a6 c6     LDX $c6
B357  38        SEC
B358  bd 72 06  LDA $0672,X
B35B  fd 73 07  SBC $0773,X
B35E  bd f2 06  LDA $06f2,X
B361  fd f3 07  SBC $07f3,X
B364  b0 04     BCS $b36a
B366  4c 24 b4  JMP $b424
B369  5e a6 c6  LSR $c6a6,X
B36C  bd e2 04  LDA $04e2,X
B36F  85 c8     STA $c8
B371  bd f2 04  LDA $04f2,X
B374  85 c9     STA $c9
B376  bd b2 04  LDA $04b2,X
B379  85 c0     STA $c0
B37B  bc c2 04  LDY $04c2,X
B37E  84 c1     STY $c1
B380  bd d2 04  LDA $04d2,X
B383  aa        TAX
B384  94 84     STY $84,X
B386  b6 00     LDX $00,Y
B388  99 00 00  STA $0000,Y
B38B  a4 c0     LDY $c0
B38D  94 84     STY $84,X
B38F  96 00     STX $00,Y
B391  60        RTS
B392  a6 c6     LDX $c6
B394  a5 c8     LDA $c8
B396  9d e2 04  STA $04e2,X
B399  a5 c9     LDA $c9
B39B  9d f2 04  STA $04f2,X
B39E  a5 c0     LDA $c0
B3A0  9d b2 04  STA $04b2,X
B3A3  a5 c1     LDA $c1
B3A5  9d c2 04  STA $04c2,X
B3A8  a8        TAY
B3A9  b9 00 00  LDA $0000,Y
B3AC  9d d2 04  STA $04d2,X
B3AF  f0 22     BEQ $b3d3
B3B1  aa        TAX
B3B2  a9 ff     LDA #$ff
B3B4  95 84     STA $84,X
B3B6  bd bf 88  LDA $88bf,X
B3B9  85 ca     STA $ca
B3BB  bd df 88  LDA $88df,X
B3BE  85 cb     STA $cb
B3C0  a5 c8     LDA $c8
B3C2  18        CLC
B3C3  71 ca     ADC ($ca),Y
B3C5  90 02     BCC $b3c9
B3C7  e6 c9     INC $c9
B3C9  85 c8     STA $c8
B3CB  a5 c9     LDA $c9
B3CD  18        CLC
B3CE  7d ff 88  ADC $88ff,X
B3D1  85 c9     STA $c9
B3D3  a6 c0     LDX $c0
B3D5  b5 00     LDA $00,X
B3D7  99 00 00  STA $0000,Y
B3DA  aa        TAX
B3DB  94 84     STY $84,X
B3DD  bd bf 88  LDA $88bf,X
B3E0  85 ca     STA $ca
B3E2  bd df 88  LDA $88df,X
B3E5  85 cb     STA $cb
B3E7  a5 c8     LDA $c8
B3E9  18        CLC
B3EA  71 ca     ADC ($ca),Y
B3EC  90 02     BCC $b3f0
B3EE  e6 c9     INC $c9
B3F0  a4 c0     LDY $c0
B3F2  a2 00     LDX #$00
B3F4  96 00     STX $00,Y
B3F6  38        SEC
B3F7  f1 ca     SBC ($ca),Y
B3F9  b0 02     BCS $b3fd
B3FB  c6 c9     DEC $c9
B3FD  85 c8     STA $c8
B3FF  a6 c6     LDX $c6
B401  bd f2 05  LDA $05f2,X
B404  c9 f0     CMP #$f0
B406  10 1c     BPL $b424
B408  bd c1 04  LDA $04c1,X
B40B  c5 c1     CMP $c1
B40D  f0 15     BEQ $b424
B40F  85 c0     STA $c0
B411  a5 a4     LDA $a4
B413  30 0f     BMI $b424
B415  a5 94     LDA $94
B417  85 c1     STA $c1
B419  20 49 80  JSR $8049
B41C  d0 04     BNE $b422
B41E  4c 6a b3  JMP $b36a
B421  95 a6     STA $a6,X
B423  c6 bd     DEC $bd
B425  71 06     ADC ($06),Y
B427  9d 73 06  STA $0673,X
B42A  bd f1 06  LDA $06f1,X
B42D  9d f3 06  STA $06f3,X
B430  e6 c6     INC $c6
B432  a5 cf     LDA $cf
B434  48        PHA
B435  20 11 a2  JSR $a211
B438  68        PLA
B439  85 cf     STA $cf
B43B  c6 c6     DEC $c6
B43D  a6 c6     LDX $c6
B43F  bd e2 04  LDA $04e2,X
B442  85 c8     STA $c8
B444  bd f2 04  LDA $04f2,X
B447  85 c9     STA $c9
B449  bd b2 04  LDA $04b2,X
B44C  85 c0     STA $c0
B44E  bc c2 04  LDY $04c2,X
B451  84 c1     STY $c1
B453  bd d2 04  LDA $04d2,X
B456  aa        TAX
B457  94 84     STY $84,X
B459  b6 00     LDX $00,Y
B45B  99 00 00  STA $0000,Y
B45E  a4 c0     LDY $c0
B460  94 84     STY $84,X
B462  96 00     STX $00,Y
B464  a6 c6     LDX $c6
B466  38        SEC
B467  bd 72 07  LDA $0772,X
B46A  fd 73 07  SBC $0773,X
B46D  bd f2 07  LDA $07f2,X
B470  fd f3 07  SBC $07f3,X
B473  90 02     BCC $b477
B475  60        RTS
B476  a4 bd     LDY $bd
B478  73        ???
B479  07        ???
B47A  9d 72 07  STA $0772,X
B47D  bd f3 07  LDA $07f3,X
B480  9d f2 07  STA $07f2,X
B483  e0 07     CPX #$07
B485  b0 20     BCS $b4a7
B487  bc 74 b1  LDY $b174,X
B48A  a5 c0     LDA $c0
B48C  99 00 04  STA $0400,Y
B48F  a5 c1     LDA $c1
B491  99 08 04  STA $0408,Y
B494  4c 9f b4  JMP $b49f
B497  bd b9 18  LDA $18b9,X
B49A  04        ???
B49B  99 09 04  STA $0409,Y
B49E  c8        INY
B49F  b9 10 04  LDA $0410,Y
B4A2  99 01 04  STA $0401,Y
B4A5  10 f1     BPL $b498
B4A7  38        SEC
B4A8  bd 72 06  LDA $0672,X
B4AB  fd 72 07  SBC $0772,X
B4AE  bd f2 06  LDA $06f2,X
B4B1  fd f2 07  SBC $07f2,X
B4B4  90 02     BCC $b4b8
B4B6  60        RTS
B4B7  cc 38 bd  CPY $bd38
B4BA  72        ???
B4BB  07        ???
B4BC  fd 71 06  SBC $0671,X
B4BF  bd f2 07  LDA $07f2,X
B4C2  fd f1 06  SBC $06f1,X
B4C5  b0 0e     BCS $b4d5
B4C7  bd 72 07  LDA $0772,X
B4CA  9d 72 06  STA $0672,X
B4CD  bd f2 07  LDA $07f2,X
B4D0  9d f2 06  STA $06f2,X
B4D3  60        RTS
B4D4  55 e0     EOR $e0,X
B4D6  08        PHP
B4D7  b0 34     BCS $b50d
B4D9  bd f2 05  LDA $05f2,X
B4DC  30 2f     BMI $b50d
B4DE  f0 17     BEQ $b4f7
B4E0  bd 90 04  LDA $0490,X
B4E3  30 1e     BMI $b503
B4E5  a5 c0     LDA $c0
B4E7  9d a0 04  STA $04a0,X
B4EA  a5 c1     LDA $c1
B4EC  9d a8 04  STA $04a8,X
B4EF  bd 72 05  LDA $0572,X
B4F2  aa        TAX
B4F3  9a        TXS
B4F4  60        RTS
B4F5  39 ad bd  AND $bdad,Y
B4F8  90 04     BCC $b4fe
B4FA  9d a0 04  STA $04a0,X
B4FD  bd 98 04  LDA $0498,X
B500  9d a8 04  STA $04a8,X
B503  a5 c0     LDA $c0
B505  9d 90 04  STA $0490,X
B508  a5 c1     LDA $c1
B50A  9d 98 04  STA $0498,X
B50D  bd 72 05  LDA $0572,X
B510  aa        TAX
B511  9a        TXS
B512  60        RTS
B513  a4 a5     LDY $a5
B515  c1 48     CMP ($48,X)
B517  bd b1 04  LDA $04b1,X
B51A  bc c1 04  LDY $04c1,X
B51D  aa        TAX
B51E  b9 00 00  LDA $0000,Y
B521  95 00     STA $00,X
B523  a9 00     LDA #$00
B525  99 00 00  STA $0000,Y
B528  86 c1     STX $c1
B52A  20 49 80  JSR $8049
B52D  f0 19     BEQ $b548
B52F  a6 c6     LDX $c6
B531  bd b1 04  LDA $04b1,X
B534  bc c1 04  LDY $04c1,X
B537  aa        TAX
B538  b5 00     LDA $00,X
B53A  99 00 00  STA $0000,Y
B53D  a9 00     LDA #$00
B53F  95 00     STA $00,X
B541  68        PLA
B542  85 c1     STA $c1
B544  4c 09 b6  JMP $b609
B547  a0 a6     LDY #$a6
B549  c6 bd     DEC $bd
B54B  b1 04     LDA ($04),Y
B54D  bc c1 04  LDY $04c1,X
B550  aa        TAX
B551  b5 00     LDA $00,X
B553  99 00 00  STA $0000,Y
B556  a9 00     LDA #$00
B558  95 00     STA $00,X
B55A  68        PLA
B55B  85 c1     STA $c1
B55D  60        RTS
B55E  20 a6 c6  JSR $c6a6
B561  e0 08     CPX #$08
B563  b0 20     BCS $b585
B565  bd 98 04  LDA $0498,X
B568  c5 c1     CMP $c1
B56A  d0 07     BNE $b573
B56C  bd 90 04  LDA $0490,X
B56F  c5 c0     CMP $c0
B571  f0 0e     BEQ $b581
B573  bd a8 04  LDA $04a8,X
B576  c5 c1     CMP $c1
B578  d0 0b     BNE $b585
B57A  bd a0 04  LDA $04a0,X
B57D  c5 c0     CMP $c0
B57F  d0 04     BNE $b585
B581  60        RTS
B582  b4 a6     LDY $a6,X
B584  c6 bd     DEC $bd
B586  c0 04     CPY #$04
B588  c5 c0     CMP $c0
B58A  d0 7d     BNE $b609
B58C  bd b0 04  LDA $04b0,X
B58F  c5 c1     CMP $c1
B591  d0 76     BNE $b609
B593  bd d0 04  LDA $04d0,X
B596  d0 71     BNE $b609
B598  bd d1 04  LDA $04d1,X
B59B  d0 6c     BNE $b609
B59D  bc c1 04  LDY $04c1,X
B5A0  b9 00 00  LDA $0000,Y
B5A3  a8        TAY
B5A4  b9 ba 81  LDA $81ba,Y
B5A7  29 c8     AND #$c8
B5A9  d0 08     BNE $b5b3
B5AB  bd f2 06  LDA $06f2,X
B5AE  10 32     BPL $b5e2
B5B0  4c 14 b5  JMP $b514
B5B3  29 80     AND #$80
B5B5  d0 13     BNE $b5ca
B5B7  38        SEC
B5B8  bd c1 04  LDA $04c1,X
B5BB  fd b1 04  SBC $04b1,X
B5BE  c9 ff     CMP #$ff
B5C0  f0 47     BEQ $b609
B5C2  bd f2 06  LDA $06f2,X
B5C5  10 1b     BPL $b5e2
B5C7  4c 14 b5  JMP $b514
B5CA  38        SEC
B5CB  bd b1 04  LDA $04b1,X
B5CE  fd c1 04  SBC $04c1,X
B5D1  a8        TAY
B5D2  b9 54 84  LDA $8454,Y
B5D5  18        CLC
B5D6  7d c1 04  ADC $04c1,X
B5D9  a8        TAY
B5DA  b9 00 00  LDA $0000,Y
B5DD  f0 e3     BEQ $b5c2
B5DF  4c 09 b6  JMP $b609
B5E2  60        RTS
B5E3  a6 c6     LDX $c6
B5E5  e0 08     CPX #$08
B5E7  b0 20     BCS $b609
B5E9  bd 98 04  LDA $0498,X
B5EC  c5 c1     CMP $c1
B5EE  d0 07     BNE $b5f7
B5F0  bd 90 04  LDA $0490,X
B5F3  c5 c0     CMP $c0
B5F5  f0 0e     BEQ $b605
B5F7  bd a8 04  LDA $04a8,X
B5FA  c5 c1     CMP $c1
B5FC  d0 0b     BNE $b609
B5FE  bd a0 04  LDA $04a0,X
B601  c5 c0     CMP $c0
B603  d0 04     BNE $b609
B605  60        RTS
B606  bd a6 c6  LDA $c6a6,X
B609  e0 07     CPX #$07
B60B  b0 13     BCS $b620
B60D  bd 80 04  LDA $0480,X
B610  30 0e     BMI $b620
B612  c5 c0     CMP $c0
B614  d0 0e     BNE $b624
B616  bd 88 04  LDA $0488,X
B619  c5 c1     CMP $c1
B61B  d0 07     BNE $b624
B61D  60        RTS
B61E  c8        INY
B61F  ac 4c 1a  LDY $1a4c
B622  b7        ???
B623  4c 38 bd  JMP $bd38
B626  72        ???
B627  06 fd     ASL $fd
B629  72        ???
B62A  07        ???
B62B  bd f2 06  LDA $06f2,X
B62E  fd f2 07  SBC $07f2,X
B631  90 ed     BCC $b620
B633  bd 72 06  LDA $0672,X
B636  38        SEC
B637  e9 01     SBC #$01
B639  9d 73 06  STA $0673,X
B63C  bd f2 06  LDA $06f2,X
B63F  e9 00     SBC #$00
B641  9d f3 06  STA $06f3,X
B644  a6 c6     LDX $c6
B646  a5 c8     LDA $c8
B648  9d e2 04  STA $04e2,X
B64B  a5 c9     LDA $c9
B64D  9d f2 04  STA $04f2,X
B650  a5 c0     LDA $c0
B652  9d b2 04  STA $04b2,X
B655  a5 c1     LDA $c1
B657  9d c2 04  STA $04c2,X
B65A  a8        TAY
B65B  b9 00 00  LDA $0000,Y
B65E  9d d2 04  STA $04d2,X
B661  f0 22     BEQ $b685
B663  aa        TAX
B664  a9 ff     LDA #$ff
B666  95 84     STA $84,X
B668  bd bf 88  LDA $88bf,X
B66B  85 ca     STA $ca
B66D  bd df 88  LDA $88df,X
B670  85 cb     STA $cb
B672  a5 c8     LDA $c8
B674  38        SEC
B675  f1 ca     SBC ($ca),Y
B677  b0 02     BCS $b67b
B679  c6 c9     DEC $c9
B67B  85 c8     STA $c8
B67D  a5 c9     LDA $c9
B67F  38        SEC
B680  fd ff 88  SBC $88ff,X
B683  85 c9     STA $c9
B685  a6 c0     LDX $c0
B687  b5 00     LDA $00,X
B689  99 00 00  STA $0000,Y
B68C  aa        TAX
B68D  94 84     STY $84,X
B68F  bd bf 88  LDA $88bf,X
B692  85 ca     STA $ca
B694  bd df 88  LDA $88df,X
B697  85 cb     STA $cb
B699  a5 c8     LDA $c8
B69B  38        SEC
B69C  f1 ca     SBC ($ca),Y
B69E  b0 02     BCS $b6a2
B6A0  c6 c9     DEC $c9
B6A2  a4 c0     LDY $c0
B6A4  a2 00     LDX #$00
B6A6  96 00     STX $00,Y
B6A8  18        CLC
B6A9  71 ca     ADC ($ca),Y
B6AB  90 02     BCC $b6af
B6AD  e6 c9     INC $c9
B6AF  85 c8     STA $c8
B6B1  a6 c6     LDX $c6
B6B3  bd f2 05  LDA $05f2,X
B6B6  c9 f0     CMP #$f0
B6B8  10 16     BPL $b6d0
B6BA  bd c1 04  LDA $04c1,X
B6BD  c5 c1     CMP $c1
B6BF  f0 0f     BEQ $b6d0
B6C1  85 c0     STA $c0
B6C3  a5 94     LDA $94
B6C5  30 09     BMI $b6d0
B6C7  a5 a4     LDA $a4
B6C9  85 c1     STA $c1
B6CB  20 49 80  JSR $8049
B6CE  f0 22     BEQ $b6f2
B6D0  e6 c6     INC $c6
B6D2  a5 cf     LDA $cf
B6D4  48        PHA
B6D5  20 af 92  JSR $92af
B6D8  68        PLA
B6D9  85 cf     STA $cf
B6DB  c6 c6     DEC $c6
B6DD  a6 c6     LDX $c6
B6DF  38        SEC
B6E0  bd 73 07  LDA $0773,X
B6E3  fd 72 06  SBC $0672,X
B6E6  bd f3 07  LDA $07f3,X
B6E9  fd f2 06  SBC $06f2,X
B6EC  b0 04     BCS $b6f2
B6EE  4c ac b7  JMP $b7ac
B6F1  5e a6 c6  LSR $c6a6,X
B6F4  bd e2 04  LDA $04e2,X
B6F7  85 c8     STA $c8
B6F9  bd f2 04  LDA $04f2,X
B6FC  85 c9     STA $c9
B6FE  bd b2 04  LDA $04b2,X
B701  85 c0     STA $c0
B703  bc c2 04  LDY $04c2,X
B706  84 c1     STY $c1
B708  bd d2 04  LDA $04d2,X
B70B  aa        TAX
B70C  94 84     STY $84,X
B70E  b6 00     LDX $00,Y
B710  99 00 00  STA $0000,Y
B713  a4 c0     LDY $c0
B715  94 84     STY $84,X
B717  96 00     STX $00,Y
B719  60        RTS
B71A  a6 c6     LDX $c6
B71C  a5 c8     LDA $c8
B71E  9d e2 04  STA $04e2,X
B721  a5 c9     LDA $c9
B723  9d f2 04  STA $04f2,X
B726  a5 c0     LDA $c0
B728  9d b2 04  STA $04b2,X
B72B  a5 c1     LDA $c1
B72D  9d c2 04  STA $04c2,X
B730  a8        TAY
B731  b9 00 00  LDA $0000,Y
B734  9d d2 04  STA $04d2,X
B737  f0 22     BEQ $b75b
B739  aa        TAX
B73A  a9 ff     LDA #$ff
B73C  95 84     STA $84,X
B73E  bd bf 88  LDA $88bf,X
B741  85 ca     STA $ca
B743  bd df 88  LDA $88df,X
B746  85 cb     STA $cb
B748  a5 c8     LDA $c8
B74A  38        SEC
B74B  f1 ca     SBC ($ca),Y
B74D  b0 02     BCS $b751
B74F  c6 c9     DEC $c9
B751  85 c8     STA $c8
B753  a5 c9     LDA $c9
B755  38        SEC
B756  fd ff 88  SBC $88ff,X
B759  85 c9     STA $c9
B75B  a6 c0     LDX $c0
B75D  b5 00     LDA $00,X
B75F  99 00 00  STA $0000,Y
B762  aa        TAX
B763  94 84     STY $84,X
B765  bd bf 88  LDA $88bf,X
B768  85 ca     STA $ca
B76A  bd df 88  LDA $88df,X
B76D  85 cb     STA $cb
B76F  a5 c8     LDA $c8
B771  38        SEC
B772  f1 ca     SBC ($ca),Y
B774  b0 02     BCS $b778
B776  c6 c9     DEC $c9
B778  a4 c0     LDY $c0
B77A  a2 00     LDX #$00
B77C  96 00     STX $00,Y
B77E  18        CLC
B77F  71 ca     ADC ($ca),Y
B781  90 02     BCC $b785
B783  e6 c9     INC $c9
B785  85 c8     STA $c8
B787  a6 c6     LDX $c6
B789  bd f2 05  LDA $05f2,X
B78C  c9 f0     CMP #$f0
B78E  10 1c     BPL $b7ac
B790  bd c1 04  LDA $04c1,X
B793  c5 c1     CMP $c1
B795  f0 15     BEQ $b7ac
B797  85 c0     STA $c0
B799  a5 94     LDA $94
B79B  30 0f     BMI $b7ac
B79D  a5 a4     LDA $a4
B79F  85 c1     STA $c1
B7A1  20 49 80  JSR $8049
B7A4  d0 04     BNE $b7aa
B7A6  4c f2 b6  JMP $b6f2
B7A9  95 a6     STA $a6,X
B7AB  c6 bd     DEC $bd
B7AD  71 06     ADC ($06),Y
B7AF  9d 73 06  STA $0673,X
B7B2  bd f1 06  LDA $06f1,X
B7B5  9d f3 06  STA $06f3,X
B7B8  e6 c6     INC $c6
B7BA  a5 cf     LDA $cf
B7BC  48        PHA
B7BD  20 af 92  JSR $92af
B7C0  68        PLA
B7C1  85 cf     STA $cf
B7C3  c6 c6     DEC $c6
B7C5  a6 c6     LDX $c6
B7C7  bd e2 04  LDA $04e2,X
B7CA  85 c8     STA $c8
B7CC  bd f2 04  LDA $04f2,X
B7CF  85 c9     STA $c9
B7D1  bd b2 04  LDA $04b2,X
B7D4  85 c0     STA $c0
B7D6  bc c2 04  LDY $04c2,X
B7D9  84 c1     STY $c1
B7DB  bd d2 04  LDA $04d2,X
B7DE  aa        TAX
B7DF  94 84     STY $84,X
B7E1  b6 00     LDX $00,Y
B7E3  99 00 00  STA $0000,Y
B7E6  a4 c0     LDY $c0
B7E8  94 84     STY $84,X
B7EA  96 00     STX $00,Y
B7EC  a6 c6     LDX $c6
B7EE  38        SEC
B7EF  bd 73 07  LDA $0773,X
B7F2  fd 72 07  SBC $0772,X
B7F5  bd f3 07  LDA $07f3,X
B7F8  fd f2 07  SBC $07f2,X
B7FB  90 02     BCC $b7ff
B7FD  60        RTS
B7FE  a4 bd     LDY $bd
B800  73        ???
B801  07        ???
B802  9d 72 07  STA $0772,X
B805  bd f3 07  LDA $07f3,X
B808  9d f2 07  STA $07f2,X
B80B  e0 07     CPX #$07
B80D  b0 20     BCS $b82f
B80F  bc 74 b1  LDY $b174,X
B812  a5 c0     LDA $c0
B814  99 00 04  STA $0400,Y
B817  a5 c1     LDA $c1
B819  99 08 04  STA $0408,Y
B81C  4c 27 b8  JMP $b827
B81F  bd b9 18  LDA $18b9,X
B822  04        ???
B823  99 09 04  STA $0409,Y
B826  c8        INY
B827  b9 10 04  LDA $0410,Y
B82A  99 01 04  STA $0401,Y
B82D  10 f1     BPL $b820
B82F  38        SEC
B830  bd 72 07  LDA $0772,X
B833  fd 72 06  SBC $0672,X
B836  bd f2 07  LDA $07f2,X
B839  fd f2 06  SBC $06f2,X
B83C  90 02     BCC $b840
B83E  60        RTS
B83F  cc 38 bd  CPY $bd38
B842  71 06     ADC ($06),Y
B844  fd 72 07  SBC $0772,X
B847  bd f1 06  LDA $06f1,X
B84A  fd f2 07  SBC $07f2,X
B84D  b0 0e     BCS $b85d
B84F  bd 72 07  LDA $0772,X
B852  9d 72 06  STA $0672,X
B855  bd f2 07  LDA $07f2,X
B858  9d f2 06  STA $06f2,X
B85B  60        RTS
B85C  55 e0     EOR $e0,X
B85E  08        PHP
B85F  b0 34     BCS $b895
B861  bd f2 05  LDA $05f2,X
B864  30 2f     BMI $b895
B866  f0 17     BEQ $b87f
B868  bd 90 04  LDA $0490,X
B86B  30 1e     BMI $b88b
B86D  a5 c0     LDA $c0
B86F  9d a0 04  STA $04a0,X
B872  a5 c1     LDA $c1
B874  9d a8 04  STA $04a8,X
B877  bd 72 05  LDA $0572,X
B87A  aa        TAX
B87B  9a        TXS
B87C  60        RTS
B87D  39 ad bd  AND $bdad,Y
B880  90 04     BCC $b886
B882  9d a0 04  STA $04a0,X
B885  bd 98 04  LDA $0498,X
B888  9d a8 04  STA $04a8,X
B88B  a5 c0     LDA $c0
B88D  9d 90 04  STA $0490,X
B890  a5 c1     LDA $c1
B892  9d 98 04  STA $0498,X
B895  bd 72 05  LDA $0572,X
B898  aa        TAX
B899  9a        TXS
B89A  60        RTS
B89B  a4 29     LDY $29
B89D  10 f0     BPL $b88f
B89F  70 a6     BVS $b847
B8A1  c6 a5     DEC $a5
B8A3  c8        INY
B8A4  9d e2 04  STA $04e2,X
B8A7  a5 c9     LDA $c9
B8A9  9d f2 04  STA $04f2,X
B8AC  a5 c0     LDA $c0
B8AE  9d b2 04  STA $04b2,X
B8B1  a5 c1     LDA $c1
B8B3  9d c2 04  STA $04c2,X
B8B6  a8        TAY
B8B7  b9 00 00  LDA $0000,Y
B8BA  9d d2 04  STA $04d2,X
B8BD  f0 22     BEQ $b8e1
B8BF  aa        TAX
B8C0  a9 ff     LDA #$ff
B8C2  95 84     STA $84,X
B8C4  bd bf 88  LDA $88bf,X
B8C7  85 ca     STA $ca
B8C9  bd df 88  LDA $88df,X
B8CC  85 cb     STA $cb
B8CE  a5 c8     LDA $c8
B8D0  18        CLC
B8D1  71 ca     ADC ($ca),Y
B8D3  90 02     BCC $b8d7
B8D5  e6 c9     INC $c9
B8D7  85 c8     STA $c8
B8D9  a5 c9     LDA $c9
B8DB  18        CLC
B8DC  7d ff 88  ADC $88ff,X
B8DF  85 c9     STA $c9
B8E1  a6 c0     LDX $c0
B8E3  b5 00     LDA $00,X
B8E5  99 00 00  STA $0000,Y
B8E8  aa        TAX
B8E9  94 84     STY $84,X
B8EB  bd bf 88  LDA $88bf,X
B8EE  85 ca     STA $ca
B8F0  bd df 88  LDA $88df,X
B8F3  85 cb     STA $cb
B8F5  a5 c8     LDA $c8
B8F7  18        CLC
B8F8  71 ca     ADC ($ca),Y
B8FA  90 02     BCC $b8fe
B8FC  e6 c9     INC $c9
B8FE  a4 c0     LDY $c0
B900  a2 00     LDX #$00
B902  96 00     STX $00,Y
B904  38        SEC
B905  f1 ca     SBC ($ca),Y
B907  b0 02     BCS $b90b
B909  c6 c9     DEC $c9
B90B  85 c8     STA $c8
B90D  60        RTS
B90E  48        PHA
B90F  bc a6 c6  LDY $c6a6,X
B912  a5 c8     LDA $c8
B914  9d e2 04  STA $04e2,X
B917  a5 c9     LDA $c9
B919  9d f2 04  STA $04f2,X
B91C  a5 c0     LDA $c0
B91E  9d b2 04  STA $04b2,X
B921  a5 c1     LDA $c1
B923  9d c2 04  STA $04c2,X
B926  a8        TAY
B927  b9 00 00  LDA $0000,Y
B92A  9d d2 04  STA $04d2,X
B92D  f0 22     BEQ $b951
B92F  aa        TAX
B930  a9 ff     LDA #$ff
B932  95 84     STA $84,X
B934  bd bf 88  LDA $88bf,X
B937  85 ca     STA $ca
B939  bd df 88  LDA $88df,X
B93C  85 cb     STA $cb
B93E  a5 c8     LDA $c8
B940  38        SEC
B941  f1 ca     SBC ($ca),Y
B943  b0 02     BCS $b947
B945  c6 c9     DEC $c9
B947  85 c8     STA $c8
B949  a5 c9     LDA $c9
B94B  38        SEC
B94C  fd ff 88  SBC $88ff,X
B94F  85 c9     STA $c9
B951  a6 c0     LDX $c0
B953  b5 00     LDA $00,X
B955  99 00 00  STA $0000,Y
B958  aa        TAX
B959  94 84     STY $84,X
B95B  bd bf 88  LDA $88bf,X
B95E  85 ca     STA $ca
B960  bd df 88  LDA $88df,X
B963  85 cb     STA $cb
B965  a5 c8     LDA $c8
B967  38        SEC
B968  f1 ca     SBC ($ca),Y
B96A  b0 02     BCS $b96e
B96C  c6 c9     DEC $c9
B96E  a4 c0     LDY $c0
B970  a2 00     LDX #$00
B972  96 00     STX $00,Y
B974  18        CLC
B975  71 ca     ADC ($ca),Y
B977  90 02     BCC $b97b
B979  e6 c9     INC $c9
B97B  85 c8     STA $c8
B97D  60        RTS
B97E  29 10     AND #$10
B980  f0 29     BEQ $b9ab
B982  a6 c6     LDX $c6
B984  bd e2 04  LDA $04e2,X
B987  85 c8     STA $c8
B989  bd f2 04  LDA $04f2,X
B98C  85 c9     STA $c9
B98E  bd b2 04  LDA $04b2,X
B991  85 c0     STA $c0
B993  bc c2 04  LDY $04c2,X
B996  84 c1     STY $c1
B998  bd d2 04  LDA $04d2,X
B99B  aa        TAX
B99C  94 84     STY $84,X
B99E  b6 00     LDX $00,Y
B9A0  99 00 00  STA $0000,Y
B9A3  a4 c0     LDY $c0
B9A5  94 84     STY $84,X
B9A7  96 00     STX $00,Y
B9A9  60        RTS
B9AA  3d a6 c6  AND $c6a6,X
B9AD  bd e2 04  LDA $04e2,X
B9B0  85 c8     STA $c8
B9B2  bd f2 04  LDA $04f2,X
B9B5  85 c9     STA $c9
B9B7  bd b2 04  LDA $04b2,X
B9BA  85 c0     STA $c0
B9BC  bc c2 04  LDY $04c2,X
B9BF  84 c1     STY $c1
B9C1  bd d2 04  LDA $04d2,X
B9C4  aa        TAX
B9C5  94 84     STY $84,X
B9C7  b6 00     LDX $00,Y
B9C9  99 00 00  STA $0000,Y
B9CC  a4 c0     LDY $c0
B9CE  94 84     STY $84,X
B9D0  96 00     STX $00,Y
B9D2  60        RTS
B9D3  f0 d8     BEQ $b9ad
B9D5  dc        ???
B9D6  d6 c7     DEC $c7,X
B9D8  da        ???
B9D9  b5 d2     LDA $d2,X
B9DB  d0 db     BNE $b9b8
B9DD  dc        ???
B9DE  c0 c6     CPY #$c6
B9E0  b5 d6     LDA $d6,X
B9E2  da        ???
B9E3  c5 cc     CMP $cc
B9E5  c7        ???
B9E6  dc        ???
B9E7  d2        ???
B9E8  dd c1 b5  CMP $b5c1,X
B9EB  a4 ac     LDY $ac
B9ED  ac a4 b5  LDY $b5a4
B9F0  d7        ???
B9F1  cc b5 c1  CPY $c1b5
B9F4  c0 b9     CPY #$b9
B9F6  de c0 d0  DEC $d0c0,X
B9F9  dc        ???
B9FA  b8        CLV
B9FB  d6 dd     DEC $dd,X
B9FD  c0 db     CPY #$db
B9FF  d2        ???
BA00  00        BRK
BA01  02        ???
BA02  15 30     ORA $30,X
BA04  00        BRK
BA05  0f        ???
BA06  00        BRK
BA07  15 00     ORA $00,X
BA09  0f        ???
BA0A  00        BRK
BA0B  22        ???
BA0C  00        BRK
BA0D  0f        ???
BA0E  00        BRK
BA0F  30 29     BMI $ba3a
BA11  00        BRK
BA12  00        BRK
BA13  00        BRK
BA14  00        BRK
BA15  00        BRK
BA16  00        BRK
BA17  00        BRK
BA18  00        BRK
BA19  00        BRK
BA1A  00        BRK
BA1B  00        BRK
BA1C  00        BRK
BA1D  00        BRK
BA1E  00        BRK
BA1F  00        BRK
BA20  00        BRK
BA21  0f        ???
BA22  29 35     AND #$35
BA24  00        BRK
BA25  0f        ???
BA26  29 38     AND #$38
BA28  00        BRK
BA29  0f        ???
BA2A  29 25     AND #$25
BA2C  00        BRK
BA2D  00        BRK
BA2E  00        BRK
BA2F  00        BRK
BA30  33        ???
BA31  00        BRK
BA32  00        BRK
BA33  00        BRK
BA34  00        BRK
BA35  00        BRK
BA36  00        BRK
BA37  00        BRK
BA38  00        BRK
BA39  0f        ???
BA3A  29 25     AND #$25
BA3C  00        BRK
BA3D  0f        ???
BA3E  29 25     AND #$25
BA40  00        BRK
BA41  0f        ???
BA42  13        ???
BA43  30 00     BMI $ba45
BA45  0f        ???
BA46  13        ???
BA47  34        ???
BA48  00        BRK
BA49  00        BRK
BA4A  00        BRK
BA4B  00        BRK
BA4C  00        BRK
BA4D  00        BRK
BA4E  00        BRK
BA4F  00        BRK
BA50  13        ???
BA51  00        BRK
BA52  00        BRK
BA53  00        BRK
BA54  00        BRK
BA55  00        BRK
BA56  00        BRK
BA57  00        BRK
BA58  00        BRK
BA59  0f        ???
BA5A  36 30     ROL $30,X
BA5C  00        BRK
BA5D  0f        ???
BA5E  26 36     ROL $36
BA60  00        BRK
BA61  01 16     ORA ($16,X)
BA63  30 00     BMI $ba65
BA65  0f        ???
BA66  0c        ???
BA67  2a        ROL A
BA68  00        BRK
BA69  0f        ???
BA6A  1b        ???
BA6B  3b        ???
BA6C  00        BRK
BA6D  0f        ???
BA6E  0c        ???
BA6F  2c 10 01  BIT $0110
BA72  10 30     BPL $baa4
BA74  00        BRK
BA75  01 16     ORA ($16,X)
BA77  36 00     ROL $00,X
BA79  0f        ???
BA7A  36 30     ROL $30,X
BA7C  00        BRK
BA7D  0f        ???
BA7E  26 36     ROL $36
BA80  0f        ???
BA81  0f        ???
BA82  15 30     ORA $30,X
BA84  0f        ???
BA85  0f        ???
BA86  0f        ???
BA87  0f        ???
BA88  0f        ???
BA89  0f        ???
BA8A  0f        ???
BA8B  0f        ???
BA8C  0f        ???
BA8D  0f        ???
BA8E  0f        ???
BA8F  0f        ???
BA90  15 0f     ORA $0f,X
BA92  0f        ???
BA93  0f        ???
BA94  0f        ???
BA95  0f        ???
BA96  0f        ???
BA97  0f        ???
BA98  0f        ???
BA99  0f        ???
BA9A  0f        ???
BA9B  0f        ???
BA9C  0f        ???
BA9D  0f        ???
BA9E  0f        ???
BA9F  0f        ???
BAA0  0f        ???
BAA1  0f        ???
BAA2  19 30 0f  ORA $0f30,Y
BAA5  0f        ???
BAA6  0f        ???
BAA7  0f        ???
BAA8  0f        ???
BAA9  0f        ???
BAAA  0f        ???
BAAB  0f        ???
BAAC  0f        ???
BAAD  0f        ???
BAAE  0f        ???
BAAF  0f        ???
BAB0  1c        ???
BAB1  0f        ???
BAB2  0f        ???
BAB3  0f        ???
BAB4  0f        ???
BAB5  0f        ???
BAB6  0f        ???
BAB7  0f        ???
BAB8  0f        ???
BAB9  0f        ???
BABA  0f        ???
BABB  0f        ???
BABC  0f        ???
BABD  0f        ???
BABE  0f        ???
BABF  0f        ???
BAC0  20 cd bb  JSR $bbcd
BAC3  a9 10     LDA #$10
BAC5  20 3b bc  JSR $bc3b
BAC8  a9 20     LDA #$20
BACA  20 3b bc  JSR $bc3b
BACD  20 f7 bd  JSR $bdf7
BAD0  4c d4 ba  JMP $bad4
BAD3  a9 a2     LDA #$a2
BAD5  01 a0     ORA ($a0,X)
BAD7  06 a5     ASL $a5
BAD9  b8        CLV
BADA  29 01     AND #$01
BADC  d0 07     BNE $bae5
BADE  20 3d bb  JSR $bb3d
BAE1  4c e8 ba  JMP $bae8
BAE4  5d 20 5f  EOR $5f20,X
BAE7  bb        ???
BAE8  a2 01     LDX #$01
BAEA  a0 12     LDY #$12
BAEC  a5 b8     LDA $b8
BAEE  29 01     AND #$01
BAF0  f0 07     BEQ $baf9
BAF2  20 3d bb  JSR $bb3d
BAF5  4c fc ba  JMP $bafc
BAF8  a6 20     LDX $20
BAFA  5f        ???
BAFB  bb        ???
BAFC  a0 08     LDY #$08
BAFE  a5 b8     LDA $b8
BB00  c9 08     CMP #$08
BB02  b0 07     BCS $bb0b
BB04  20 81 bb  JSR $bb81
BB07  4c 0e bb  JMP $bb0e
BB0A  20 20 a7  JSR $a720
BB0D  bb        ???
BB0E  a0 14     LDY #$14
BB10  20 81 bb  JSR $bb81
BB13  a0 0b     LDY #$0b
BB15  20 1f bb  JSR $bb1f
BB18  a0 17     LDY #$17
BB1A  20 1f bb  JSR $bb1f
BB1D  60        RTS
BB1E  20 20 00  JSR $0020
BB21  fa        ???
BB22  a2 02     LDX #$02
BB24  a9 20     LDA #$20
BB26  20 89 f7  JSR $f789
BB29  a9 01     LDA #$01
BB2B  20 76 f7  JSR $f776
BB2E  a6 b8     LDX $b8
BB30  bd 0e d1  LDA $d10e,X
BB33  09 30     ORA #$30
BB35  20 76 f7  JSR $f776
BB38  4c 31 fa  JMP $fa31
BB3B  20 23 20  JSR $2023
BB3E  00        BRK
BB3F  fa        ???
BB40  a9 20     LDA #$20
BB42  20 89 f7  JSR $f789
BB45  20 ad f6  JSR $f6ad
BB48  04        ???
BB49  04        ???
BB4A  06 08     ASL $08
BB4C  0a        ASL A
BB4D  c8        INY
BB4E  a9 20     LDA #$20
BB50  20 89 f7  JSR $f789
BB53  20 ad f6  JSR $f6ad
BB56  04        ???
BB57  05 07     ORA $07
BB59  09 0b     ORA #$0b
BB5B  4c 31 fa  JMP $fa31
BB5E  4c 20 00  JMP $0020
BB61  fa        ???
BB62  a9 20     LDA #$20
BB64  20 89 f7  JSR $f789
BB67  20 ad f6  JSR $f6ad
BB6A  04        ???
BB6B  00        BRK
BB6C  02        ???
BB6D  08        PHP
BB6E  0a        ASL A
BB6F  c8        INY
BB70  a9 20     LDA #$20
BB72  20 89 f7  JSR $f789
BB75  20 ad f6  JSR $f6ad
BB78  04        ???
BB79  01 03     ORA ($03,X)
BB7B  09 0b     ORA #$0b
BB7D  4c 31 fa  JMP $fa31
BB80  8d 20 00  STA $0020
BB83  fa        ???
BB84  a2 01     LDX #$01
BB86  a9 20     LDA #$20
BB88  20 89 f7  JSR $f789
BB8B  20 ad f6  JSR $f6ad
BB8E  04        ???
BB8F  10 12     BPL $bba3
BB91  0c        ???
BB92  0e c8 a2  ASL $a2c8
BB95  01 a9     ORA ($a9,X)
BB97  20 20 89  JSR $8920
BB9A  f7        ???
BB9B  20 ad f6  JSR $f6ad
BB9E  04        ???
BB9F  11 13     ORA ($13),Y
BBA1  0d 0f 4c  ORA $4c0f
BBA4  31 fa     AND ($fa),Y
BBA6  a4 20     LDY $20
BBA8  00        BRK
BBA9  fa        ???
BBAA  a2 01     LDX #$01
BBAC  a9 20     LDA #$20
BBAE  20 89 f7  JSR $f789
BBB1  20 ad f6  JSR $f6ad
BBB4  04        ???
BBB5  14        ???
BBB6  16 0c     ASL $0c,X
BBB8  0e c8 a2  ASL $a2c8
BBBB  01 a9     ORA ($a9,X)
BBBD  20 20 89  JSR $8920
BBC0  f7        ???
BBC1  20 ad f6  JSR $f6ad
BBC4  04        ???
BBC5  15 17     ORA $17,X
BBC7  0d 0f 4c  ORA $4c0f
BBCA  31 fa     AND ($fa),Y
BBCC  ac 48 8a  LDY $8a48
BBCF  48        PHA
BBD0  a6 b8     LDX $b8
BBD2  bd 8e d0  LDA $d08e,X
BBD5  8d 75 04  STA $0475
BBD8  8d 7d 04  STA $047d
BBDB  bd ae d0  LDA $d0ae,X
BBDE  8d 76 04  STA $0476
BBE1  8d 7e 04  STA $047e
BBE4  a9 3b     LDA #$3b
BBE6  8d 74 04  STA $0474
BBE9  8d 7c 04  STA $047c
BBEC  a9 00     LDA #$00
BBEE  8d 77 04  STA $0477
BBF1  8d 7f 04  STA $047f
BBF4  68        PLA
BBF5  aa        TAX
BBF6  68        PLA
BBF7  60        RTS
BBF8  20 a5 c7  JSR $c7a5
BBFB  29 20     AND #$20
BBFD  4a        LSR A
BBFE  4a        LSR A
BBFF  aa        TAX
BC00  bd 75 04  LDA $0475,X
BC03  d0 20     BNE $bc25
BC05  bd 76 04  LDA $0476,X
BC08  d0 1b     BNE $bc25
BC0A  a5 c7     LDA $c7
BC0C  29 0c     AND #$0c
BC0E  d0 05     BNE $bc15
BC10  a9 03     LDA #$03
BC12  20 83 e8  JSR $e883
BC15  a5 c7     LDA $c7
BC17  29 03     AND #$03
BC19  49 03     EOR #$03
BC1B  0a        ASL A
BC1C  0a        ASL A
BC1D  05 c7     ORA $c7
BC1F  85 c7     STA $c7
BC21  38        SEC
BC22  60        RTS
BC23  48        PHA
BC24  a9 a5     LDA #$a5
BC26  c7        ???
BC27  29 30     AND #$30
BC29  4a        LSR A
BC2A  4a        LSR A
BC2B  4a        LSR A
BC2C  4a        LSR A
BC2D  25 c7     AND $c7
BC2F  d0 70     BNE $bca1
BC31  20 a4 bc  JSR $bca4
BC34  ad dc 00  LDA $00dc
BC37  30 4b     BMI $bc84
BC39  a5 c7     LDA $c7
BC3B  20 00 fa  JSR $fa00
BC3E  4a        LSR A
BC3F  4a        LSR A
BC40  4a        LSR A
BC41  4a        LSR A
BC42  45 b8     EOR $b8
BC44  29 01     AND #$01
BC46  a0 19     LDY #$19
BC48  c9 00     CMP #$00
BC4A  f0 02     BEQ $bc4e
BC4C  a0 0d     LDY #$0d
BC4E  a2 01     LDX #$01
BC50  a9 20     LDA #$20
BC52  20 89 f7  JSR $f789
BC55  a9 05     LDA #$05
BC57  20 19 fa  JSR $fa19
BC5A  a5 c7     LDA $c7
BC5C  29 20     AND #$20
BC5E  4a        LSR A
BC5F  4a        LSR A
BC60  aa        TAX
BC61  bd 76 04  LDA $0476,X
BC64  a2 00     LDX #$00
BC66  a0 02     LDY #$02
BC68  20 f3 f6  JSR $f6f3
BC6B  a9 3a     LDA #$3a
BC6D  20 76 f7  JSR $f776
BC70  a5 c7     LDA $c7
BC72  29 20     AND #$20
BC74  4a        LSR A
BC75  4a        LSR A
BC76  aa        TAX
BC77  bd 75 04  LDA $0475,X
BC7A  a2 00     LDX #$00
BC7C  a0 02     LDY #$02
BC7E  20 f3 f6  JSR $f6f3
BC81  20 31 fa  JSR $fa31
BC84  a5 c7     LDA $c7
BC86  29 20     AND #$20
BC88  4a        LSR A
BC89  4a        LSR A
BC8A  aa        TAX
BC8B  bd 74 04  LDA $0474,X
BC8E  d0 11     BNE $bca1
BC90  bd 76 04  LDA $0476,X
BC93  d0 0c     BNE $bca1
BC95  bd 75 04  LDA $0475,X
BC98  c9 0c     CMP #$0c
BC9A  b0 05     BCS $bca1
BC9C  a9 06     LDA #$06
BC9E  20 83 e8  JSR $e883
BCA1  18        CLC
BCA2  60        RTS
BCA3  30 de     BMI $bc83
BCA5  74        ???
BCA6  04        ???
BCA7  bd 74 04  LDA $0474,X
BCAA  10 30     BPL $bcdc
BCAC  18        CLC
BCAD  69 3c     ADC #$3c
BCAF  9d 74 04  STA $0474,X
BCB2  de 75 04  DEC $0475,X
BCB5  bd 75 04  LDA $0475,X
BCB8  10 22     BPL $bcdc
BCBA  18        CLC
BCBB  69 3c     ADC #$3c
BCBD  9d 75 04  STA $0475,X
BCC0  de 76 04  DEC $0476,X
BCC3  bd 76 04  LDA $0476,X
BCC6  10 14     BPL $bcdc
BCC8  18        CLC
BCC9  69 3c     ADC #$3c
BCCB  9d 76 04  STA $0476,X
BCCE  de 77 04  DEC $0477,X
BCD1  bd 77 04  LDA $0477,X
BCD4  10 06     BPL $bcdc
BCD6  18        CLC
BCD7  69 18     ADC #$18
BCD9  9d 77 04  STA $0477,X
BCDC  60        RTS
BCDD  20 fe 74  JSR $74fe
BCE0  04        ???
BCE1  bd 74 04  LDA $0474,X
BCE4  c9 3c     CMP #$3c
BCE6  90 32     BCC $bd1a
BCE8  e9 3c     SBC #$3c
BCEA  9d 74 04  STA $0474,X
BCED  fe 75 04  INC $0475,X
BCF0  bd 75 04  LDA $0475,X
BCF3  c9 3c     CMP #$3c
BCF5  90 23     BCC $bd1a
BCF7  e9 3c     SBC #$3c
BCF9  9d 75 04  STA $0475,X
BCFC  fe 76 04  INC $0476,X
BCFF  bd 76 04  LDA $0476,X
BD02  c9 3c     CMP #$3c
BD04  90 14     BCC $bd1a
BD06  e9 3c     SBC #$3c
BD08  9d 76 04  STA $0476,X
BD0B  fe 77 04  INC $0477,X
BD0E  bd 77 04  LDA $0477,X
BD11  c9 18     CMP #$18
BD13  90 05     BCC $bd1a
BD15  e9 18     SBC #$18
BD17  9d 77 04  STA $0477,X
BD1A  60        RTS
BD1B  c9 ad     CMP #$ad
BD1D  dc        ???
BD1E  00        BRK
BD1F  30 2f     BMI $bd50
BD21  20 00 fa  JSR $fa00
BD24  a9 20     LDA #$20
BD26  a2 00     LDX #$00
BD28  a0 16     LDY #$16
BD2A  20 89 f7  JSR $f789
BD2D  a9 05     LDA #$05
BD2F  20 19 fa  JSR $fa19
BD32  a2 00     LDX #$00
BD34  ad 76 04  LDA $0476
BD37  a0 02     LDY #$02
BD39  20 f3 f6  JSR $f6f3
BD3C  a9 3a     LDA #$3a
BD3E  20 76 f7  JSR $f776
BD41  a2 00     LDX #$00
BD43  ad 75 04  LDA $0475
BD46  a0 02     LDY #$02
BD48  20 f3 f6  JSR $f6f3
BD4B  4c 31 fa  JMP $fa31
BD4E  20 30 60  JSR $6030
BD51  a5 c7     LDA $c7
BD53  29 30     AND #$30
BD55  4a        LSR A
BD56  4a        LSR A
BD57  4a        LSR A
BD58  4a        LSR A
BD59  25 c7     AND $c7
BD5B  f0 32     BEQ $bd8f
BD5D  ad dc 00  LDA $00dc
BD60  30 2d     BMI $bd8f
BD62  20 00 fa  JSR $fa00
BD65  a5 c7     LDA $c7
BD67  4a        LSR A
BD68  4a        LSR A
BD69  4a        LSR A
BD6A  4a        LSR A
BD6B  45 b8     EOR $b8
BD6D  29 01     AND #$01
BD6F  a0 19     LDY #$19
BD71  c9 00     CMP #$00
BD73  f0 02     BEQ $bd77
BD75  a0 0d     LDY #$0d
BD77  a2 01     LDX #$01
BD79  a9 20     LDA #$20
BD7B  20 89 f7  JSR $f789
BD7E  a9 05     LDA #$05
BD80  20 19 fa  JSR $fa19
BD83  a6 cd     LDX $cd
BD85  a5 cc     LDA $cc
BD87  a0 05     LDY #$05
BD89  20 f3 f6  JSR $f6f3
BD8C  4c 31 fa  JMP $fa31
BD8F  60        RTS
BD90  b9 65 20  LDA $2065,Y
BD93  00        BRK
BD94  fa        ???
BD95  a9 20     LDA #$20
BD97  a2 1a     LDX #$1a
BD99  a0 03     LDY #$03
BD9B  20 89 f7  JSR $f789
BD9E  20 ad f6  JSR $f6ad
BDA1  04        ???
BDA2  24 26     BIT $26
BDA4  28        PLP
BDA5  2a        ROL A
BDA6  a9 20     LDA #$20
BDA8  a2 1a     LDX #$1a
BDAA  a0 04     LDY #$04
BDAC  20 89 f7  JSR $f789
BDAF  20 ad f6  JSR $f6ad
BDB2  04        ???
BDB3  25 27     AND $27
BDB5  29 2b     AND #$2b
BDB7  4c 31 fa  JMP $fa31
BDBA  a0 20     LDY #$20
BDBC  00        BRK
BDBD  fa        ???
BDBE  a9 20     LDA #$20
BDC0  a2 1a     LDX #$1a
BDC2  a0 03     LDY #$03
BDC4  20 89 f7  JSR $f789
BDC7  20 ad f6  JSR $f6ad
BDCA  04        ???
BDCB  2c 2e 3c  BIT $3c2e
BDCE  3e a9 20  ROL $20a9,X
BDD1  a2 1a     LDX #$1a
BDD3  a0 04     LDY #$04
BDD5  20 89 f7  JSR $f789
BDD8  20 ad f6  JSR $f6ad
BDDB  04        ???
BDDC  2d 2f 3d  AND $3d2f
BDDF  3f        ???
BDE0  4c 31 fa  JMP $fa31
BDE3  20 a2 a2  JSR $a2a2
BDE6  1a        ???
BDE7  a0 03     LDY #$03
BDE9  a5 c7     LDA $c7
BDEB  29 10     AND #$10
BDED  f0 03     BEQ $bdf2
BDEF  4c 3d bb  JMP $bb3d
BDF2  4c 5f bb  JMP $bb5f
BDF5  4c a4 ad  JMP $ada4
BDF8  88        DEY
BDF9  03        ???
BDFA  a2 1a     LDX #$1a
BDFC  a0 06     LDY #$06
BDFE  4c 02 be  JMP $be02
BE01  f6 20     INC $20,X
BE03  00        BRK
BE04  fa        ???
BE05  48        PHA
BE06  a9 20     LDA #$20
BE08  20 89 f7  JSR $f789
BE0B  a9 03     LDA #$03
BE0D  20 19 fa  JSR $fa19
BE10  68        PLA
BE11  a2 00     LDX #$00
BE13  a0 03     LDY #$03
BE15  20 f3 f6  JSR $f6f3
BE18  4c 31 fa  JMP $fa31
BE1B  4e 22 a5  LSR $a522
BE1E  b8        CLV
BE1F  4a        LSR A
BE20  4a        LSR A
BE21  4a        LSR A
BE22  a2 0e     LDX #$0e
BE24  a0 03     LDY #$03
BE26  20 3a be  JSR $be3a
BE29  a5 b8     LDA $b8
BE2B  29 07     AND #$07
BE2D  18        CLC
BE2E  69 01     ADC #$01
BE30  a2 10     LDX #$10
BE32  a0 03     LDY #$03
BE34  4c 3a be  JMP $be3a
BE37  ea        NOP
BE38  38        SEC
BE39  fd 20 00  SBC $0020,X
BE3C  fa        ???
BE3D  48        PHA
BE3E  a9 20     LDA #$20
BE40  20 89 f7  JSR $f789
BE43  a9 01     LDA #$01
BE45  20 19 fa  JSR $fa19
BE48  68        PLA
BE49  a2 00     LDX #$00
BE4B  a0 01     LDY #$01
BE4D  20 f3 f6  JSR $f6f3
BE50  4c 31 fa  JMP $fa31
BE53  6c a9 ed  JMP ($eda9)
BE56  8d 92 00  STA $0092
BE59  a9 bf     LDA #$bf
BE5B  8d 93 00  STA $0093
BE5E  20 9c bf  JSR $bf9c
BE61  a9 20     LDA #$20
BE63  8d 92 00  STA $0092
BE66  a9 ba     LDA #$ba
BE68  8d 93 00  STA $0093
BE6B  4c cc bf  JMP $bfcc
BE6E  e6 a9     INC $a9
BE70  ed 8d 92  SBC $928d
BE73  00        BRK
BE74  a9 c3     LDA #$c3
BE76  8d 93 00  STA $0093
BE79  20 9c bf  JSR $bf9c
BE7C  a9 40     LDA #$40
BE7E  8d 92 00  STA $0092
BE81  a9 ba     LDA #$ba
BE83  8d 93 00  STA $0093
BE86  4c cc bf  JMP $bfcc
BE89  68        PLA
BE8A  85 a9     STA $a9
BE8C  ad 8d 92  LDA $928d
BE8F  00        BRK
BE90  a9 c8     LDA #$c8
BE92  8d 93 00  STA $0093
BE95  20 9c bf  JSR $bf9c
BE98  a9 00     LDA #$00
BE9A  8d 92 00  STA $0092
BE9D  a9 ba     LDA #$ba
BE9F  8d 93 00  STA $0093
BEA2  4c cc bf  JMP $bfcc
BEA5  05 ad     ORA $ad
BEA7  da        ???
BEA8  00        BRK
BEA9  d0 fb     BNE $bea6
BEAB  20 90 f8  JSR $f890
BEAE  20 da f8  JSR $f8da
BEB1  20 9b f8  JSR $f89b
BEB4  a9 80     LDA #$80
BEB6  8d 92 00  STA $0092
BEB9  a9 ba     LDA #$ba
BEBB  8d 93 00  STA $0093
BEBE  20 cc bf  JSR $bfcc
BEC1  20 00 fa  JSR $fa00
BEC4  a9 20     LDA #$20
BEC6  a2 0b     LDX #$0b
BEC8  a0 0d     LDY #$0d
BECA  20 89 f7  JSR $f789
BECD  20 ad f6  JSR $f6ad
BED0  09 47     ORA #$47
BED2  41 4d     EOR ($4d,X)
BED4  45 20     EOR $20
BED6  4f        ???
BED7  56 45     LSR $45,X
BED9  52        ???
BEDA  a9 20     LDA #$20
BEDC  a2 0a     LDX #$0a
BEDE  a0 0f     LDY #$0f
BEE0  20 89 f7  JSR $f789
BEE3  20 ad f6  JSR $f6ad
BEE6  0a        ASL A
BEE7  80        ???
BEE8  82        ???
BEE9  84 86     STY $86
BEEB  88        DEY
BEEC  8a        TXA
BEED  84 86     STY $86
BEEF  8c 8e a9  STY $a98e
BEF2  20 a2 0a  JSR $0aa2
BEF5  a0 10     LDY #$10
BEF7  20 89 f7  JSR $f789
BEFA  20 ad f6  JSR $f6ad
BEFD  0a        ASL A
BEFE  81 83     STA ($83,X)
BF00  85 87     STA $87
BF02  89        ???
BF03  8b        ???
BF04  85 87     STA $87
BF06  8d 8f 4c  STA $4c8f
BF09  31 fa     AND ($fa),Y
BF0B  36 49     ROL $49,X
BF0D  b1 49     LDA ($49),Y
BF0F  ee 49 da  INC $da49
BF12  8d 47 04  STA $0447
BF15  49 b9     EOR #$b9
BF17  0a        ASL A
BF18  90 02     BCC $bf1c
BF1A  49 f0     EOR #$f0
BF1C  49 83     EOR #$83
BF1E  0a        ASL A
BF1F  90 02     BCC $bf23
BF21  49 04     EOR #$04
BF23  49 48     EOR #$48
BF25  49 5c     EOR #$5c
BF27  49 9d     EOR #$9d
BF29  18        CLC
BF2A  69 e1     ADC #$e1
BF2C  4c a3 e1  JMP $e1a3
BF2F  2c ad da  BIT $daad
BF32  00        BRK
BF33  d0 fb     BNE $bf30
BF35  20 90 f8  JSR $f890
BF38  20 da f8  JSR $f8da
BF3B  20 9b f8  JSR $f89b
BF3E  a9 a0     LDA #$a0
BF40  8d 92 00  STA $0092
BF43  a9 ba     LDA #$ba
BF45  8d 93 00  STA $0093
BF48  20 cc bf  JSR $bfcc
BF4B  20 00 fa  JSR $fa00
BF4E  a9 20     LDA #$20
BF50  a2 08     LDX #$08
BF52  a0 0d     LDY #$0d
BF54  20 89 f7  JSR $f789
BF57  20 ad f6  JSR $f6ad
BF5A  0f        ???
BF5B  43        ???
BF5C  4f        ???
BF5D  4e 47 52  LSR $5247
BF60  41 54     EOR ($54,X)
BF62  55 4c     EOR $4c,X
BF64  41 54     EOR ($54,X)
BF66  49 4f     EOR #$4f
BF68  4e 53 a9  LSR $a953
BF6B  20 a2 0a  JSR $0aa2
BF6E  a0 0f     LDY #$0f
BF70  20 89 f7  JSR $f789
BF73  20 ad f6  JSR $f6ad
BF76  0a        ASL A
BF77  90 92     BCC $bf0b
BF79  94 96     STY $96,X
BF7B  98        TYA
BF7C  9a        TXS
BF7D  9c        ???
BF7E  9e        ???
BF7F  3c        ???
BF80  3e a9 20  ROL $20a9,X
BF83  a2 0a     LDX #$0a
BF85  a0 10     LDY #$10
BF87  20 89 f7  JSR $f789
BF8A  20 ad f6  JSR $f6ad
BF8D  0a        ASL A
BF8E  91 93     STA ($93),Y
BF90  95 97     STA $97,X
BF92  99 9b 9d  STA $9d9b,Y
BF95  9f        ???
BF96  3d 3f 4c  AND $4c3f,X
BF99  31 fa     AND ($fa),Y
BF9B  09 ad     ORA #$ad
BF9D  da        ???
BF9E  00        BRK
BF9F  d0 fb     BNE $bf9c
BFA1  20 90 f8  JSR $f890
BFA4  20 76 f8  JSR $f876
BFA7  ad 02 20  LDA $2002
BFAA  a9 20     LDA #$20
BFAC  8d 06 20  STA $2006
BFAF  a0 00     LDY #$00
BFB1  8c 06 20  STY $2006
BFB4  a2 04     LDX #$04
BFB6  b1 92     LDA ($92),Y
BFB8  8d 07 20  STA $2007
BFBB  c8        INY
BFBC  d0 f8     BNE $bfb6
BFBE  ee 93 00  INC $0093
BFC1  ca        DEX
BFC2  d0 f2     BNE $bfb6
BFC4  20 81 f8  JSR $f881
BFC7  20 9b f8  JSR $f89b
BFCA  60        RTS
BFCB  a9 20     LDA #$20
BFCD  90 f8     BCC $bfc7
BFCF  20 76 f8  JSR $f876
BFD2  a0 00     LDY #$00
BFD4  a9 3f     LDA #$3f
BFD6  8d 06 20  STA $2006
BFD9  8c 06 20  STY $2006
BFDC  b1 92     LDA ($92),Y
BFDE  8d 07 20  STA $2007
BFE1  c8        INY
BFE2  c0 20     CPY #$20
BFE4  d0 f6     BNE $bfdc
BFE6  20 81 f8  JSR $f881
BFE9  20 9b f8  JSR $f89b
BFEC  60        RTS
BFED  7f        ???
BFEE  7f        ???
BFEF  7f        ???
BFF0  7f        ???
BFF1  7f        ???
BFF2  7f        ???
BFF3  7f        ???
BFF4  7f        ???
BFF5  7f        ???
BFF6  7f        ???
BFF7  7f        ???
BFF8  7f        ???
BFF9  7f        ???
BFFA  7f        ???
BFFB  7f        ???
BFFC  7f        ???
BFFD  7f        ???
BFFE  7f        ???
BFFF  7f        ???
C000  7f        ???
C001  7f        ???
C002  7f        ???
C003  7f        ???
C004  7f        ???
C005  7f        ???
C006  7f        ???
C007  7f        ???
C008  7f        ???
C009  7f        ???
C00A  7f        ???
C00B  7f        ???
C00C  7f        ???
C00D  7f        ???
C00E  7f        ???
C00F  7f        ???
C010  7f        ???
C011  7f        ???
C012  7f        ???
C013  7f        ???
C014  7f        ???
C015  7f        ???
C016  7f        ???
C017  7f        ???
C018  7f        ???
C019  7f        ???
C01A  7f        ???
C01B  7f        ???
C01C  7f        ???
C01D  7f        ???
C01E  7f        ???
C01F  7f        ???
C020  7f        ???
C021  7f        ???
C022  7f        ???
C023  7f        ???
C024  7f        ???
C025  7f        ???
C026  7f        ???
C027  7f        ???
C028  7f        ???
C029  7f        ???
C02A  7f        ???
C02B  7f        ???
C02C  7f        ???
C02D  7f        ???
C02E  7f        ???
C02F  20 20 20  JSR $2020
C032  20 20 20  JSR $2020
C035  20 20 20  JSR $2020
C038  20 20 20  JSR $2020
C03B  20 20 20  JSR $2020
C03E  20 20 20  JSR $2020
C041  20 20 20  JSR $2020
C044  20 20 20  JSR $2020
C047  20 20 20  JSR $2020
C04A  20 7f 7f  JSR $7f7f
C04D  7f        ???
C04E  7f        ???
C04F  20 20 20  JSR $2020
C052  20 20 20  JSR $2020
C055  20 20 20  JSR $2020
C058  20 20 20  JSR $2020
C05B  20 20 20  JSR $2020
C05E  20 20 20  JSR $2020
C061  20 20 20  JSR $2020
C064  20 20 20  JSR $2020
C067  20 20 20  JSR $2020
C06A  20 7f 7f  JSR $7f7f
C06D  7f        ???
C06E  7f        ???
C06F  20 20 20  JSR $2020
C072  20 20 20  JSR $2020
C075  20 20 20  JSR $2020
C078  20 20 20  JSR $2020
C07B  20 20 20  JSR $2020
C07E  20 20 20  JSR $2020
C081  20 20 20  JSR $2020
C084  20 20 20  JSR $2020
C087  20 20 20  JSR $2020
C08A  20 7f 7f  JSR $7f7f
C08D  7f        ???
C08E  7f        ???
C08F  20 20 20  JSR $2020
C092  20 61 61  JSR $6161
C095  61 61     ADC ($61,X)
C097  61 61     ADC ($61,X)
C099  61 61     ADC ($61,X)
C09B  61 61     ADC ($61,X)
C09D  61 61     ADC ($61,X)
C09F  61 61     ADC ($61,X)
C0A1  61 61     ADC ($61,X)
C0A3  61 61     ADC ($61,X)
C0A5  61 20     ADC ($20,X)
C0A7  20 20 20  JSR $2020
C0AA  20 7f 7f  JSR $7f7f
C0AD  7f        ???
C0AE  7f        ???
C0AF  20 20 20  JSR $2020
C0B2  20 61 62  JSR $6261
C0B5  62        ???
C0B6  62        ???
C0B7  62        ???
C0B8  62        ???
C0B9  62        ???
C0BA  62        ???
C0BB  62        ???
C0BC  62        ???
C0BD  62        ???
C0BE  62        ???
C0BF  62        ???
C0C0  62        ???
C0C1  62        ???
C0C2  62        ???
C0C3  62        ???
C0C4  62        ???
C0C5  61 20     ADC ($20,X)
C0C7  20 20 20  JSR $2020
C0CA  20 7f 7f  JSR $7f7f
C0CD  7f        ???
C0CE  7f        ???
C0CF  20 20 20  JSR $2020
C0D2  20 61 62  JSR $6261
C0D5  62        ???
C0D6  62        ???
C0D7  62        ???
C0D8  62        ???
C0D9  62        ???
C0DA  62        ???
C0DB  62        ???
C0DC  62        ???
C0DD  62        ???
C0DE  64        ???
C0DF  66 62     ROR $62
C0E1  6e 62 72  ROR $7262
C0E4  62        ???
C0E5  61 20     ADC ($20,X)
C0E7  20 20 20  JSR $2020
C0EA  20 7f 7f  JSR $7f7f
C0ED  7f        ???
C0EE  7f        ???
C0EF  20 20 20  JSR $2020
C0F2  20 61 62  JSR $6261
C0F5  62        ???
C0F6  62        ???
C0F7  62        ???
C0F8  62        ???
C0F9  62        ???
C0FA  62        ???
C0FB  62        ???
C0FC  62        ???
C0FD  63        ???
C0FE  65 67     ADC $67
C100  62        ???
C101  6f        ???
C102  71 73     ADC ($73),Y
C104  62        ???
C105  61 20     ADC ($20,X)
C107  20 20 20  JSR $2020
C10A  20 7f 7f  JSR $7f7f
C10D  7f        ???
C10E  7f        ???
C10F  20 20 20  JSR $2020
C112  20 61 62  JSR $6261
C115  62        ???
C116  62        ???
C117  62        ???
C118  62        ???
C119  62        ???
C11A  62        ???
C11B  62        ???
C11C  62        ???
C11D  68        PLA
C11E  6a        ROR A
C11F  6c 62 74  JMP ($7462)
C122  76 78     ROR $78,X
C124  62        ???
C125  61 20     ADC ($20,X)
C127  20 20 20  JSR $2020
C12A  20 7f 7f  JSR $7f7f
C12D  7f        ???
C12E  7f        ???
C12F  20 20 20  JSR $2020
C132  20 61 62  JSR $6261
C135  62        ???
C136  62        ???
C137  62        ???
C138  62        ???
C139  62        ???
C13A  62        ???
C13B  62        ???
C13C  62        ???
C13D  69 6b     ADC #$6b
C13F  6d 62 75  ADC $7562
C142  77        ???
C143  79 62 61  ADC $6162,Y
C146  20 20 20  JSR $2020
C149  20 20 7f  JSR $7f20
C14C  7f        ???
C14D  7f        ???
C14E  7f        ???
C14F  20 20 20  JSR $2020
C152  20 61 62  JSR $6261
C155  62        ???
C156  62        ???
C157  62        ???
C158  62        ???
C159  62        ???
C15A  62        ???
C15B  62        ???
C15C  62        ???
C15D  62        ???
C15E  62        ???
C15F  62        ???
C160  62        ???
C161  62        ???
C162  62        ???
C163  62        ???
C164  62        ???
C165  61 20     ADC ($20,X)
C167  20 20 20  JSR $2020
C16A  20 7f 7f  JSR $7f7f
C16D  7f        ???
C16E  7f        ???
C16F  20 20 20  JSR $2020
C172  20 61 61  JSR $6161
C175  61 61     ADC ($61,X)
C177  61 61     ADC ($61,X)
C179  61 61     ADC ($61,X)
C17B  61 61     ADC ($61,X)
C17D  61 61     ADC ($61,X)
C17F  61 61     ADC ($61,X)
C181  61 61     ADC ($61,X)
C183  61 61     ADC ($61,X)
C185  61 20     ADC ($20,X)
C187  20 20 20  JSR $2020
C18A  20 7f 7f  JSR $7f7f
C18D  7f        ???
C18E  7f        ???
C18F  20 20 20  JSR $2020
C192  20 20 20  JSR $2020
C195  20 20 20  JSR $2020
C198  20 20 20  JSR $2020
C19B  20 20 20  JSR $2020
C19E  20 20 20  JSR $2020
C1A1  20 20 20  JSR $2020
C1A4  20 20 20  JSR $2020
C1A7  20 20 20  JSR $2020
C1AA  20 7f 7f  JSR $7f7f
C1AD  7f        ???
C1AE  7f        ???
C1AF  20 20 20  JSR $2020
C1B2  20 20 20  JSR $2020
C1B5  20 20 20  JSR $2020
C1B8  20 20 20  JSR $2020
C1BB  20 20 20  JSR $2020
C1BE  20 20 20  JSR $2020
C1C1  20 20 20  JSR $2020
C1C4  20 20 20  JSR $2020
C1C7  20 20 20  JSR $2020
C1CA  20 7f 7f  JSR $7f7f
C1CD  7f        ???
C1CE  7f        ???
C1CF  20 20 20  JSR $2020
C1D2  20 20 20  JSR $2020
C1D5  20 20 20  JSR $2020
C1D8  20 20 20  JSR $2020
C1DB  20 20 20  JSR $2020
C1DE  20 20 20  JSR $2020
C1E1  20 20 20  JSR $2020
C1E4  20 20 20  JSR $2020
C1E7  20 20 20  JSR $2020
C1EA  20 7f 7f  JSR $7f7f
C1ED  7f        ???
C1EE  7f        ???
C1EF  20 20 20  JSR $2020
C1F2  20 20 20  JSR $2020
C1F5  20 20 20  JSR $2020
C1F8  20 20 20  JSR $2020
C1FB  20 20 20  JSR $2020
C1FE  20 20 20  JSR $2020
C201  20 20 20  JSR $2020
C204  20 20 20  JSR $2020
C207  20 20 20  JSR $2020
C20A  20 7f 7f  JSR $7f7f
C20D  7f        ???
C20E  7f        ???
C20F  20 20 20  JSR $2020
C212  20 20 20  JSR $2020
C215  20 20 20  JSR $2020
C218  20 20 20  JSR $2020
C21B  20 20 20  JSR $2020
C21E  20 20 20  JSR $2020
C221  20 20 20  JSR $2020
C224  20 20 20  JSR $2020
C227  20 20 20  JSR $2020
C22A  20 7f 7f  JSR $7f7f
C22D  7f        ???
C22E  7f        ???
C22F  20 20 20  JSR $2020
C232  20 20 20  JSR $2020
C235  20 20 20  JSR $2020
C238  20 20 20  JSR $2020
C23B  20 20 20  JSR $2020
C23E  20 20 20  JSR $2020
C241  20 20 20  JSR $2020
C244  20 20 20  JSR $2020
C247  20 20 20  JSR $2020
C24A  20 7f 7f  JSR $7f7f
C24D  7f        ???
C24E  7f        ???
C24F  20 20 20  JSR $2020
C252  20 20 20  JSR $2020
C255  20 20 20  JSR $2020
C258  20 20 20  JSR $2020
C25B  20 20 20  JSR $2020
C25E  20 20 20  JSR $2020
C261  20 20 20  JSR $2020
C264  20 20 20  JSR $2020
C267  20 20 20  JSR $2020
C26A  20 7f 7f  JSR $7f7f
C26D  7f        ???
C26E  7f        ???
C26F  20 20 20  JSR $2020
C272  20 20 20  JSR $2020
C275  20 20 20  JSR $2020
C278  20 20 20  JSR $2020
C27B  20 20 20  JSR $2020
C27E  20 20 20  JSR $2020
C281  20 20 20  JSR $2020
C284  20 20 20  JSR $2020
C287  20 20 20  JSR $2020
C28A  20 7f 7f  JSR $7f7f
C28D  7f        ???
C28E  7f        ???
C28F  20 20 20  JSR $2020
C292  20 20 20  JSR $2020
C295  20 43 48  JSR $4843
C298  49 4e     EOR #$4e
C29A  45 53     EOR $53
C29C  45 20     EOR $20
C29E  43        ???
C29F  48        PHA
C2A0  45 53     EOR $53
C2A2  45 20     EOR $20
C2A4  20 20 20  JSR $2020
C2A7  20 20 20  JSR $2020
C2AA  20 7f 7f  JSR $7f7f
C2AD  7f        ???
C2AE  7f        ???
C2AF  20 20 20  JSR $2020
C2B2  20 20 20  JSR $2020
C2B5  20 20 20  JSR $2020
C2B8  20 20 20  JSR $2020
C2BB  20 20 20  JSR $2020
C2BE  20 20 20  JSR $2020
C2C1  20 20 20  JSR $2020
C2C4  20 20 20  JSR $2020
C2C7  20 20 20  JSR $2020
C2CA  20 7f 7f  JSR $7f7f
C2CD  7f        ???
C2CE  7f        ???
C2CF  20 20 20  JSR $2020
C2D2  20 20 20  JSR $2020
C2D5  54        ???
C2D6  58        CLI
C2D7  43        ???
C2D8  20 43 4f  JSR $4f43
C2DB  52        ???
C2DC  50 4f     BVC $c32d
C2DE  52        ???
C2DF  41 54     EOR ($54,X)
C2E1  49 4f     EOR #$4f
C2E3  4e 20 20  LSR $2020
C2E6  20 20 20  JSR $2020
C2E9  20 20 7f  JSR $7f20
C2EC  7f        ???
C2ED  7f        ???
C2EE  7f        ???
C2EF  20 20 20  JSR $2020
C2F2  20 20 40  JSR $4020
C2F5  20 31 39  JSR $3931
C2F8  39 31 20  AND $2031,Y
C2FB  43        ???
C2FC  4f        ???
C2FD  50 59     BVC $c358
C2FF  52        ???
C300  49 47     EOR #$47
C302  48        PHA
C303  54        ???
C304  20 20 20  JSR $2020
C307  20 20 20  JSR $2020
C30A  20 7f 7f  JSR $7f7f
C30D  7f        ???
C30E  7f        ???
C30F  20 20 20  JSR $2020
C312  20 20 20  JSR $2020
C315  20 20 20  JSR $2020
C318  20 20 20  JSR $2020
C31B  20 20 20  JSR $2020
C31E  20 20 20  JSR $2020
C321  20 20 20  JSR $2020
C324  20 20 20  JSR $2020
C327  20 20 20  JSR $2020
C32A  20 7f 7f  JSR $7f7f
C32D  7f        ???
C32E  7f        ???
C32F  20 20 20  JSR $2020
C332  20 20 20  JSR $2020
C335  20 20 20  JSR $2020
C338  20 20 20  JSR $2020
C33B  20 20 20  JSR $2020
C33E  20 20 20  JSR $2020
C341  20 20 20  JSR $2020
C344  20 20 20  JSR $2020
C347  20 20 20  JSR $2020
C34A  20 7f 7f  JSR $7f7f
C34D  7f        ???
C34E  7f        ???
C34F  20 20 20  JSR $2020
C352  20 20 20  JSR $2020
C355  20 20 20  JSR $2020
C358  20 20 20  JSR $2020
C35B  20 20 20  JSR $2020
C35E  20 20 20  JSR $2020
C361  20 20 20  JSR $2020
C364  20 20 20  JSR $2020
C367  20 20 20  JSR $2020
C36A  20 7f 7f  JSR $7f7f
C36D  7f        ???
C36E  7f        ???
C36F  7f        ???
C370  7f        ???
C371  7f        ???
C372  7f        ???
C373  7f        ???
C374  7f        ???
C375  7f        ???
C376  7f        ???
C377  7f        ???
C378  7f        ???
C379  7f        ???
C37A  7f        ???
C37B  7f        ???
C37C  7f        ???
C37D  7f        ???
C37E  7f        ???
C37F  7f        ???
C380  7f        ???
C381  7f        ???
C382  7f        ???
C383  7f        ???
C384  7f        ???
C385  7f        ???
C386  7f        ???
C387  7f        ???
C388  7f        ???
C389  7f        ???
C38A  7f        ???
C38B  7f        ???
C38C  7f        ???
C38D  7f        ???
C38E  7f        ???
C38F  7f        ???
C390  7f        ???
C391  7f        ???
C392  7f        ???
C393  7f        ???
C394  7f        ???
C395  7f        ???
C396  7f        ???
C397  7f        ???
C398  7f        ???
C399  7f        ???
C39A  7f        ???
C39B  7f        ???
C39C  7f        ???
C39D  7f        ???
C39E  7f        ???
C39F  7f        ???
C3A0  7f        ???
C3A1  7f        ???
C3A2  7f        ???
C3A3  7f        ???
C3A4  7f        ???
C3A5  7f        ???
C3A6  7f        ???
C3A7  7f        ???
C3A8  7f        ???
C3A9  7f        ???
C3AA  7f        ???
C3AB  7f        ???
C3AC  7f        ???
C3AD  55 55     EOR $55,X
C3AF  55 55     EOR $55,X
C3B1  55 55     EOR $55,X
C3B3  55 55     EOR $55,X
C3B5  55 aa     EOR $aa,X
C3B7  aa        TAX
C3B8  aa        TAX
C3B9  aa        TAX
C3BA  aa        TAX
C3BB  aa        TAX
C3BC  55 55     EOR $55,X
C3BE  aa        TAX
C3BF  aa        TAX
C3C0  aa        TAX
C3C1  aa        TAX
C3C2  aa        TAX
C3C3  aa        TAX
C3C4  55 55     EOR $55,X
C3C6  aa        TAX
C3C7  aa        TAX
C3C8  aa        TAX
C3C9  aa        TAX
C3CA  aa        TAX
C3CB  aa        TAX
C3CC  55 55     EOR $55,X
C3CE  55 55     EOR $55,X
C3D0  55 55     EOR $55,X
C3D2  55 55     EOR $55,X
C3D4  55 55     EOR $55,X
C3D6  55 00     EOR $00,X
C3D8  00        BRK
C3D9  00        BRK
C3DA  00        BRK
C3DB  55 55     EOR $55,X
C3DD  55 00     EOR $00,X
C3DF  00        BRK
C3E0  00        BRK
C3E1  00        BRK
C3E2  00        BRK
C3E3  55 55     EOR $55,X
C3E5  55 55     EOR $55,X
C3E7  55 55     EOR $55,X
C3E9  55 55     EOR $55,X
C3EB  55 55     EOR $55,X
C3ED  20 20 20  JSR $2020
C3F0  20 20 20  JSR $2020
C3F3  20 20 20  JSR $2020
C3F6  20 20 20  JSR $2020
C3F9  20 20 20  JSR $2020
C3FC  20 20 20  JSR $2020
C3FF  20 20 20  JSR $2020
C402  20 20 20  JSR $2020
C405  20 20 20  JSR $2020
C408  20 20 20  JSR $2020
C40B  20 20 20  JSR $2020
C40E  20 20 20  JSR $2020
C411  20 20 20  JSR $2020
C414  20 20 20  JSR $2020
C417  20 20 20  JSR $2020
C41A  20 20 20  JSR $2020
C41D  20 20 20  JSR $2020
C420  20 20 20  JSR $2020
C423  20 20 20  JSR $2020
C426  20 20 20  JSR $2020
C429  20 20 20  JSR $2020
C42C  20 20 20  JSR $2020
C42F  20 20 20  JSR $2020
C432  20 20 20  JSR $2020
C435  20 20 20  JSR $2020
C438  20 20 20  JSR $2020
C43B  20 20 20  JSR $2020
C43E  20 20 20  JSR $2020
C441  20 20 20  JSR $2020
C444  20 20 20  JSR $2020
C447  20 20 20  JSR $2020
C44A  20 20 20  JSR $2020
C44D  20 20 20  JSR $2020
C450  20 20 20  JSR $2020
C453  20 20 20  JSR $2020
C456  20 20 20  JSR $2020
C459  20 20 20  JSR $2020
C45C  20 20 20  JSR $2020
C45F  20 20 20  JSR $2020
C462  20 20 20  JSR $2020
C465  20 20 20  JSR $2020
C468  20 20 20  JSR $2020
C46B  20 20 20  JSR $2020
C46E  20 20 20  JSR $2020
C471  7f        ???
C472  7f        ???
C473  7f        ???
C474  7f        ???
C475  7f        ???
C476  20 20 20  JSR $2020
C479  20 20 20  JSR $2020
C47C  20 20 20  JSR $2020
C47F  20 20 20  JSR $2020
C482  20 20 20  JSR $2020
C485  20 20 20  JSR $2020
C488  20 20 20  JSR $2020
C48B  20 20 20  JSR $2020
C48E  20 20 20  JSR $2020
C491  7f        ???
C492  7f        ???
C493  7f        ???
C494  7f        ???
C495  7f        ???
C496  7d 20 20  ADC $2020,X
C499  45 41     EOR $41
C49B  53        ???
C49C  59 20 20  EOR $2020,Y
C49F  20 20 20  JSR $2020
C4A2  20 20 20  JSR $2020
C4A5  20 20 20  JSR $2020
C4A8  4b        ???
C4A9  59 55 20  EOR $2055,Y
C4AC  20 20 20  JSR $2020
C4AF  20 20 7f  JSR $7f20
C4B2  7f        ???
C4B3  7f        ???
C4B4  7f        ???
C4B5  7f        ???
C4B6  7d 20 20  ADC $2020,X
C4B9  20 20 20  JSR $2020
C4BC  20 20 20  JSR $2020
C4BF  20 20 20  JSR $2020
C4C2  20 20 20  JSR $2020
C4C5  20 20 20  JSR $2020
C4C8  20 20 20  JSR $2020
C4CB  20 20 20  JSR $2020
C4CE  20 20 20  JSR $2020
C4D1  7f        ???
C4D2  7f        ???
C4D3  7f        ???
C4D4  7f        ???
C4D5  7f        ???
C4D6  7d 20 20  ADC $2020,X
C4D9  08        PHP
C4DA  0a        ASL A
C4DB  0c        ???
C4DC  0e 20 20  ASL $2020
C4DF  20 20 20  JSR $2020
C4E2  20 20 20  JSR $2020
C4E5  20 20 20  JSR $2020
C4E8  5c        ???
C4E9  5e 20 20  LSR $2020,X
C4EC  20 20 20  JSR $2020
C4EF  20 20 7f  JSR $7f20
C4F2  7f        ???
C4F3  7f        ???
C4F4  7f        ???
C4F5  7f        ???
C4F6  7d 20 20  ADC $2020,X
C4F9  09 0b     ORA #$0b
C4FB  0d 0f 20  ORA $200f
C4FE  20 20 20  JSR $2020
C501  20 20 20  JSR $2020
C504  37        ???
C505  2d 39 20  AND $2039
C508  5d 5f 20  EOR $205f,X
C50B  20 20 20  JSR $2020
C50E  20 20 20  JSR $2020
C511  20 7d 7d  JSR $7d7d
C514  7d 7d 7d  ADC $7d7d,X
C517  20 20 20  JSR $2020
C51A  20 20 20  JSR $2020
C51D  20 20 20  JSR $2020
C520  20 20 20  JSR $2020
C523  20 20 20  JSR $2020
C526  20 20 20  JSR $2020
C529  20 20 20  JSR $2020
C52C  20 20 20  JSR $2020
C52F  20 20 7f  JSR $7f20
C532  7f        ???
C533  7f        ???
C534  7f        ???
C535  7f        ???
C536  20 20 20  JSR $2020
C539  20 20 20  JSR $2020
C53C  20 20 20  JSR $2020
C53F  20 20 20  JSR $2020
C542  20 20 20  JSR $2020
C545  20 20 20  JSR $2020
C548  20 20 20  JSR $2020
C54B  20 20 20  JSR $2020
C54E  20 20 20  JSR $2020
C551  7f        ???
C552  7f        ???
C553  7f        ???
C554  7f        ???
C555  7f        ???
C556  7d 20 20  ADC $2020,X
C559  4e 4f 52  LSR $524f
C55C  4d 41 4c  EOR $4c41
C55F  20 20 20  JSR $2020
C562  20 20 20  JSR $2020
C565  20 20 20  JSR $2020
C568  4b        ???
C569  59 55 20  EOR $2055,Y
C56C  20 20 20  JSR $2020
C56F  20 20 7f  JSR $7f20
C572  7f        ???
C573  7f        ???
C574  7f        ???
C575  7f        ???
C576  7d 20 20  ADC $2020,X
C579  20 20 20  JSR $2020
C57C  20 20 20  JSR $2020
C57F  20 20 20  JSR $2020
C582  20 20 20  JSR $2020
C585  20 20 20  JSR $2020
C588  20 20 20  JSR $2020
C58B  20 20 20  JSR $2020
C58E  20 20 20  JSR $2020
C591  7f        ???
C592  7f        ???
C593  7f        ???
C594  7f        ???
C595  7f        ???
C596  7d 20 20  ADC $2020,X
C599  10 12     BPL $c5ad
C59B  14        ???
C59C  16 20     ASL $20,X
C59E  20 20 20  JSR $2020
C5A1  20 20 20  JSR $2020
C5A4  20 20 20  JSR $2020
C5A7  20 5c 5e  JSR $5e5c
C5AA  20 20 20  JSR $2020
C5AD  20 20 20  JSR $2020
C5B0  20 7f 7f  JSR $7f7f
C5B3  7f        ???
C5B4  7f        ???
C5B5  7f        ???
C5B6  7d 20 20  ADC $2020,X
C5B9  11 13     ORA ($13),Y
C5BB  15 17     ORA $17,X
C5BD  20 20 20  JSR $2020
C5C0  20 20 20  JSR $2020
C5C3  20 34 2d  JSR $2d34
C5C6  36 20     ROL $20,X
C5C8  5d 5f 20  EOR $205f,X
C5CB  20 20 20  JSR $2020
C5CE  20 20 20  JSR $2020
C5D1  20 7d 7d  JSR $7d7d
C5D4  7d 7d 7d  ADC $7d7d,X
C5D7  20 20 20  JSR $2020
C5DA  20 20 20  JSR $2020
C5DD  20 20 20  JSR $2020
C5E0  20 20 20  JSR $2020
C5E3  20 20 20  JSR $2020
C5E6  20 20 20  JSR $2020
C5E9  20 20 20  JSR $2020
C5EC  20 20 20  JSR $2020
C5EF  20 20 7f  JSR $7f20
C5F2  7f        ???
C5F3  7f        ???
C5F4  7f        ???
C5F5  7f        ???
C5F6  20 20 20  JSR $2020
C5F9  20 20 20  JSR $2020
C5FC  20 20 20  JSR $2020
C5FF  20 20 20  JSR $2020
C602  20 20 20  JSR $2020
C605  20 20 20  JSR $2020
C608  20 20 20  JSR $2020
C60B  20 20 20  JSR $2020
C60E  20 20 20  JSR $2020
C611  7f        ???
C612  7f        ???
C613  7f        ???
C614  7f        ???
C615  7f        ???
C616  7d 20 20  ADC $2020,X
C619  44        ???
C61A  49 46     EOR #$46
C61C  46 49     LSR $49
C61E  43        ???
C61F  55 4c     EOR $4c,X
C621  54        ???
C622  20 20 20  JSR $2020
C625  20 20 20  JSR $2020
C628  4b        ???
C629  59 55 20  EOR $2055,Y
C62C  20 20 20  JSR $2020
C62F  20 20 7f  JSR $7f20
C632  7f        ???
C633  7f        ???
C634  7f        ???
C635  7f        ???
C636  7d 20 20  ADC $2020,X
C639  20 20 20  JSR $2020
C63C  20 20 20  JSR $2020
C63F  20 20 20  JSR $2020
C642  20 20 20  JSR $2020
C645  20 20 20  JSR $2020
C648  20 20 20  JSR $2020
C64B  20 20 20  JSR $2020
C64E  20 20 20  JSR $2020
C651  7f        ???
C652  7f        ???
C653  7f        ???
C654  7f        ???
C655  7f        ???
C656  7d 20 20  ADC $2020,X
C659  18        CLC
C65A  1a        ???
C65B  1c        ???
C65C  1e 20 20  ASL $2020,X
C65F  20 20 20  JSR $2020
C662  20 20 20  JSR $2020
C665  20 20 20  JSR $2020
C668  5c        ???
C669  5e 20 20  LSR $2020,X
C66C  20 20 20  JSR $2020
C66F  20 20 7f  JSR $7f20
C672  7f        ???
C673  7f        ???
C674  7f        ???
C675  7f        ???
C676  7d 20 20  ADC $2020,X
C679  19 1b 1d  ORA $1d1b,Y
C67C  1f        ???
C67D  20 20 20  JSR $2020
C680  20 20 20  JSR $2020
C683  20 31 2d  JSR $2d31
C686  33        ???
C687  20 5d 5f  JSR $5f5d
C68A  20 20 20  JSR $2020
C68D  20 20 20  JSR $2020
C690  20 20 7d  JSR $7d20
C693  7d 7d 7d  ADC $7d7d,X
C696  7d 20 20  ADC $2020,X
C699  20 20 20  JSR $2020
C69C  20 20 20  JSR $2020
C69F  20 20 20  JSR $2020
C6A2  20 20 20  JSR $2020
C6A5  20 20 20  JSR $2020
C6A8  20 20 20  JSR $2020
C6AB  20 20 20  JSR $2020
C6AE  20 20 20  JSR $2020
C6B1  7f        ???
C6B2  7f        ???
C6B3  7f        ???
C6B4  7f        ???
C6B5  7f        ???
C6B6  20 20 20  JSR $2020
C6B9  20 20 20  JSR $2020
C6BC  20 20 20  JSR $2020
C6BF  20 20 20  JSR $2020
C6C2  20 20 20  JSR $2020
C6C5  20 20 20  JSR $2020
C6C8  20 20 20  JSR $2020
C6CB  20 20 20  JSR $2020
C6CE  20 20 20  JSR $2020
C6D1  7f        ???
C6D2  7f        ???
C6D3  7f        ???
C6D4  7f        ???
C6D5  7f        ???
C6D6  7d 20 20  ADC $2020,X
C6D9  56 53     LSR $53,X
C6DB  2e 20 20  ROL $2020
C6DE  20 20 20  JSR $2020
C6E1  20 20 20  JSR $2020
C6E4  20 20 20  JSR $2020
C6E7  20 20 20  JSR $2020
C6EA  20 20 20  JSR $2020
C6ED  20 20 20  JSR $2020
C6F0  20 7f 7f  JSR $7f7f
C6F3  7f        ???
C6F4  7f        ???
C6F5  7f        ???
C6F6  7d 20 20  ADC $2020,X
C6F9  20 20 20  JSR $2020
C6FC  20 20 20  JSR $2020
C6FF  20 20 20  JSR $2020
C702  20 20 20  JSR $2020
C705  20 20 20  JSR $2020
C708  20 20 20  JSR $2020
C70B  20 20 20  JSR $2020
C70E  20 20 20  JSR $2020
C711  7f        ???
C712  7f        ???
C713  7f        ???
C714  7f        ???
C715  7f        ???
C716  7d 20 20  ADC $2020,X
C719  00        BRK
C71A  02        ???
C71B  04        ???
C71C  06 20     ASL $20
C71E  20 20 20  JSR $2020
C721  20 20 20  JSR $2020
C724  20 20 20  JSR $2020
C727  20 20 20  JSR $2020
C72A  20 20 20  JSR $2020
C72D  20 20 20  JSR $2020
C730  20 7f 7f  JSR $7f7f
C733  7f        ???
C734  7f        ???
C735  7f        ???
C736  7d 20 20  ADC $2020,X
C739  01 03     ORA ($03,X)
C73B  05 07     ORA $07
C73D  20 20 20  JSR $2020
C740  20 20 20  JSR $2020
C743  20 20 20  JSR $2020
C746  20 20 20  JSR $2020
C749  20 20 20  JSR $2020
C74C  20 20 20  JSR $2020
C74F  20 20 20  JSR $2020
C752  7d 7d 7d  ADC $7d7d,X
C755  7d 7d 20  ADC $207d,X
C758  20 20 20  JSR $2020
C75B  20 20 20  JSR $2020
C75E  20 20 20  JSR $2020
C761  20 20 20  JSR $2020
C764  20 20 20  JSR $2020
C767  20 20 20  JSR $2020
C76A  20 20 20  JSR $2020
C76D  20 20 20  JSR $2020
C770  20 20 20  JSR $2020
C773  20 20 20  JSR $2020
C776  20 20 20  JSR $2020
C779  20 20 20  JSR $2020
C77C  20 20 20  JSR $2020
C77F  20 20 20  JSR $2020
C782  20 20 20  JSR $2020
C785  20 20 20  JSR $2020
C788  20 20 20  JSR $2020
C78B  20 20 20  JSR $2020
C78E  20 20 20  JSR $2020
C791  20 20 20  JSR $2020
C794  20 20 20  JSR $2020
C797  20 20 20  JSR $2020
C79A  20 20 20  JSR $2020
C79D  20 20 20  JSR $2020
C7A0  20 20 20  JSR $2020
C7A3  20 20 20  JSR $2020
C7A6  20 20 20  JSR $2020
C7A9  20 20 20  JSR $2020
C7AC  20 55 55  JSR $5555
C7AF  11 00     ORA ($00),Y
C7B1  00        BRK
C7B2  00        BRK
C7B3  00        BRK
C7B4  00        BRK
C7B5  55 55     EOR $55,X
C7B7  11 00     ORA ($00),Y
C7B9  00        BRK
C7BA  00        BRK
C7BB  00        BRK
C7BC  00        BRK
C7BD  55 55     EOR $55,X
C7BF  11 00     ORA ($00),Y
C7C1  00        BRK
C7C2  00        BRK
C7C3  00        BRK
C7C4  00        BRK
C7C5  55 55     EOR $55,X
C7C7  11 00     ORA ($00),Y
C7C9  00        BRK
C7CA  00        BRK
C7CB  00        BRK
C7CC  00        BRK
C7CD  55 55     EOR $55,X
C7CF  11 00     ORA ($00),Y
C7D1  00        BRK
C7D2  00        BRK
C7D3  00        BRK
C7D4  00        BRK
C7D5  55 55     EOR $55,X
C7D7  11 00     ORA ($00),Y
C7D9  00        BRK
C7DA  00        BRK
C7DB  00        BRK
C7DC  00        BRK
C7DD  55 55     EOR $55,X
C7DF  11 00     ORA ($00),Y
C7E1  00        BRK
C7E2  00        BRK
C7E3  00        BRK
C7E4  00        BRK
C7E5  55 55     EOR $55,X
C7E7  11 00     ORA ($00),Y
C7E9  00        BRK
C7EA  00        BRK
C7EB  00        BRK
C7EC  00        BRK
C7ED  ae a0 f0  LDX $f0a0
C7F0  a9 00     LDA #$00
C7F2  20 21 c8  JSR $c821
C7F5  a9 01     LDA #$01
C7F7  20 21 c8  JSR $c821
C7FA  a9 02     LDA #$02
C7FC  20 21 c8  JSR $c821
C7FF  a9 03     LDA #$03
C801  4c 21 c8  JMP $c821
C804  b9 63 a9  LDA $a963,Y
C807  00        BRK
C808  a2 24     LDX #$24
C80A  a0 17     LDY #$17
C80C  20 21 c8  JSR $c821
C80F  a9 01     LDA #$01
C811  a0 47     LDY #$47
C813  20 21 c8  JSR $c821
C816  a9 02     LDA #$02
C818  a0 77     LDY #$77
C81A  20 21 c8  JSR $c821
C81D  a9 03     LDA #$03
C81F  a0 a7     LDY #$a7
C821  48        PHA
C822  8a        TXA
C823  48        PHA
C824  98        TYA
C825  48        PHA
C826  ba        TSX
C827  bd 03 01  LDA $0103,X
C82A  0a        ASL A
C82B  aa        TAX
C82C  bd 4b c8  LDA $c84b,X
C82F  8d d8 00  STA $00d8
C832  bd 4c c8  LDA $c84c,X
C835  8d d9 00  STA $00d9
C838  bd 53 c8  LDA $c853,X
C83B  ba        TSX
C83C  48        PHA
C83D  bd 02 01  LDA $0102,X
C840  aa        TAX
C841  68        PLA
C842  20 1d f6  JSR $f61d
C845  68        PLA
C846  a8        TAY
C847  68        PLA
C848  aa        TAX
C849  68        PLA
C84A  60        RTS
C84B  5b        ???
C84C  c8        INY
C84D  6a        ROR A
C84E  c8        INY
C84F  79 c8 88  ADC $88c8,Y
C852  c8        INY
C853  40        RTI
C854  00        BRK
C855  70 00     BVS $c857
C857  a0 00     LDY #$00
C859  d0 00     BNE $c85b
C85B  04        ???
C85C  03        ???
C85D  02        ???
C85E  a0 a2     LDY #$a2
C860  a4 a6     LDY $a6
C862  c0 c2     CPY #$c2
C864  c4 c6     CPY $c6
C866  e0 e2     CPX #$e2
C868  e4 e6     CPX $e6
C86A  04        ???
C86B  03        ???
C86C  02        ???
C86D  a8        TAY
C86E  aa        TAX
C86F  ac ae c8  LDY $c8ae
C872  ca        DEX
C873  cc ce e8  CPY $e8ce
C876  ea        NOP
C877  ec ee 04  CPX $04ee
C87A  03        ???
C87B  02        ???
C87C  b0 b2     BCS $c830
C87E  b4 b6     LDY $b6,X
C880  d0 d2     BNE $c854
C882  d4        ???
C883  d6 f0     DEC $f0,X
C885  f2        ???
C886  f4        ???
C887  f6 04     INC $04,X
C889  03        ???
C88A  02        ???
C88B  b8        CLV
C88C  ba        TSX
C88D  bc be d8  LDY $d8be,X
C890  da        ???
C891  dc        ???
C892  de f8 fa  DEC $faf8,X
C895  fc        ???
C896  fe 2c 97  INC $972c,X
C899  c8        INY
C89A  29 56     AND #$56
C89C  4a        LSR A
C89D  aa        TAX
C89E  38        SEC
C89F  e9 98     SBC #$98
C8A1  98        TYA
C8A2  d0 04     BNE $c8a8
C8A4  20 49 80  JSR $8049
C8A7  4c 4c ae  JMP $ae4c
C8AA  f9 b9 bd  SBC $bdb9,Y
C8AD  a9 04     LDA #$04
C8AF  85 ba     STA $ba
C8B1  a2 00     LDX #$00
C8B3  20 2c ff  JSR $ff2c
C8B6  ad e2 00  LDA $00e2
C8B9  49 10     EOR #$10
C8BB  8d 00 20  STA $2000
C8BE  20 54 be  JSR $be54
C8C1  20 06 c9  JSR $c906
C8C4  ad e2 00  LDA $00e2
C8C7  8d 00 20  STA $2000
C8CA  a9 00     LDA #$00
C8CC  8d bd 00  STA $00bd
C8CF  ad e0 00  LDA $00e0
C8D2  29 80     AND #$80
C8D4  d0 1e     BNE $c8f4
C8D6  ad bd 00  LDA $00bd
C8D9  c9 08     CMP #$08
C8DB  90 f2     BCC $c8cf
C8DD  20 ee c9  JSR $c9ee
C8E0  a9 00     LDA #$00
C8E2  85 ba     STA $ba
C8E4  a9 00     LDA #$00
C8E6  8d bd 00  STA $00bd
C8E9  a9 08     LDA #$08
C8EB  85 b8     STA $b8
C8ED  20 5d d1  JSR $d15d
C8F0  4c ad c8  JMP $c8ad
C8F3  ac a9 00  LDY $00a9
C8F6  8d e0 00  STA $00e0
C8F9  60        RTS
C8FA  20 20 20  JSR $2020
C8FD  20 20 20  JSR $2020
C900  20 20 20  JSR $2020
C903  20 20 20  JSR $2020
C906  a9 00     LDA #$00
C908  a2 41     LDX #$41
C90A  a0 37     LDY #$37
C90C  20 21 c9  JSR $c921
C90F  a9 01     LDA #$01
C911  a2 61     LDX #$61
C913  ea        NOP
C914  ea        NOP
C915  ea        NOP
C916  ea        NOP
C917  ea        NOP
C918  ea        NOP
C919  ea        NOP
C91A  ea        NOP
C91B  ea        NOP
C91C  ea        NOP
C91D  ea        NOP
C91E  ea        NOP
C91F  ea        NOP
C920  ea        NOP
C921  48        PHA
C922  8a        TXA
C923  48        PHA
C924  98        TYA
C925  48        PHA
C926  ba        TSX
C927  bd 03 01  LDA $0103,X
C92A  0a        ASL A
C92B  aa        TAX
C92C  bd 4b c9  LDA $c94b,X
C92F  8d d8 00  STA $00d8
C932  bd 4c c9  LDA $c94c,X
C935  8d d9 00  STA $00d9
C938  bd 53 c8  LDA $c853,X
C93B  ba        TSX
C93C  48        PHA
C93D  bd 02 01  LDA $0102,X
C940  aa        TAX
C941  68        PLA
C942  20 1d f6  JSR $f61d
C945  68        PLA
C946  a8        TAY
C947  68        PLA
C948  aa        TAX
C949  68        PLA
C94A  60        RTS
C94B  5b        ???
C94C  c9 6a     CMP #$6a
C94E  c9 20     CMP #$20
C950  20 20 20  JSR $2020
C953  20 20 20  JSR $2020
C956  20 20 20  JSR $2020
C959  01 03     ORA ($03,X)
C95B  04        ???
C95C  02        ???
C95D  02        ???
C95E  62        ???
C95F  64        ???
C960  66 22     ROR $22
C962  68        PLA
C963  6a        ROR A
C964  6c 22 e0  JMP ($e022)
C967  e2        ???
C968  e4 e6     CPX $e6
C96A  04        ???
C96B  02        ???
C96C  02        ???
C96D  6e 70 72  ROR $7270
C970  22        ???
C971  74        ???
C972  76 78     ROR $78,X
C974  22        ???
C975  e8        INX
C976  ea        NOP
C977  ec ee 10  CPX $10ee
C97A  12        ???
C97B  14        ???
C97C  16 18     ASL $18,X
C97E  1a        ???
C97F  1c        ???
C980  1e 20 20  ASL $2020,X
C983  20 20 20  JSR $2020
C986  20 20 20  JSR $2020
C989  20 20 20  JSR $2020
C98C  20 20 20  JSR $2020
C98F  20 20 20  JSR $2020
C992  20 20 20  JSR $2020
C995  20 20 20  JSR $2020
C998  20 11 13  JSR $1311
C99B  15 17     ORA $17,X
C99D  19 1b 1d  ORA $1d1b,Y
C9A0  1f        ???
C9A1  20 20 20  JSR $2020
C9A4  20 20 20  JSR $2020
C9A7  20 20 20  JSR $2020
C9AA  20 20 20  JSR $2020
C9AD  20 20 20  JSR $2020
C9B0  20 20 20  JSR $2020
C9B3  20 20 20  JSR $2020
C9B6  20 20 20  JSR $2020
C9B9  e0 e2     CPX #$e2
C9BB  e4 e6     CPX $e6
C9BD  e8        INX
C9BE  ea        NOP
C9BF  ec ee 20  CPX $20ee
C9C2  20 20 20  JSR $2020
C9C5  20 20 20  JSR $2020
C9C8  20 20 20  JSR $2020
C9CB  20 20 20  JSR $2020
C9CE  20 20 20  JSR $2020
C9D1  20 20 20  JSR $2020
C9D4  20 20 20  JSR $2020
C9D7  20 20 e1  JSR $e120
C9DA  e3        ???
C9DB  e5 e7     SBC $e7
C9DD  e9 eb     SBC #$eb
C9DF  ed ef 20  SBC $20ef
C9E2  20 20 20  JSR $2020
C9E5  20 20 20  JSR $2020
C9E8  20 20 20  JSR $2020
C9EB  20 20 20  JSR $2020
C9EE  20 b8 f8  JSR $f8b8
C9F1  60        RTS
C9F2  20 20 20  JSR $2020
C9F5  20 20 20  JSR $2020
C9F8  20 20 20  JSR $2020
C9FB  20 20 aa  JSR $aa20
C9FE  f8        SED
C9FF  20 b8 f8  JSR $f8b8
CA02  20 c5 f8  JSR $f8c5
CA05  20 0e f9  JSR $f90e
CA08  20 19 f1  JSR $f119
CA0B  20 bc cd  JSR $cdbc
CA0E  a9 0f     LDA #$0f
CA10  8d 15 40  STA $4015
CA13  20 9b f8  JSR $f89b
CA16  20 81 f8  JSR $f881
CA19  a9 00     LDA #$00
CA1B  8d 8f 00  STA $008f
CA1E  a9 00     LDA #$00
CA20  8d 62 03  STA $0362
CA23  20 a1 d5  JSR $d5a1
CA26  20 29 d6  JSR $d629
CA29  60        RTS
CA2A  86 d6     STX $d6
CA2C  20 20 20  JSR $2020
CA2F  20 20 20  JSR $2020
CA32  20 20 20  JSR $2020
CA35  20 20 20  JSR $2020
CA38  a0 a2     LDY #$a2
CA3A  a4 a6     LDY $a6
CA3C  a8        TAY
CA3D  aa        TAX
CA3E  ac ae b0  LDY $b0ae
CA41  b2        ???
CA42  20 20 20  JSR $2020
CA45  20 20 20  JSR $2020
CA48  20 20 20  JSR $2020
CA4B  20 20 20  JSR $2020
CA4E  20 20 20  JSR $2020
CA51  20 20 20  JSR $2020
CA54  20 20 a1  JSR $a120
CA57  a3        ???
CA58  a5 a7     LDA $a7
CA5A  a9 ab     LDA #$ab
CA5C  ad af b1  LDA $b1af
CA5F  b3        ???
CA60  b5 b7     LDA $b7,X
CA62  b9 bb 20  LDA $20bb,Y
CA65  20 20 20  JSR $2020
CA68  20 20 20  JSR $2020
CA6B  20 20 20  JSR $2020
CA6E  20 20 20  JSR $2020
CA71  20 20 20  JSR $2020
CA74  20 20 c0  JSR $c020
CA77  c2        ???
CA78  c4 c6     CPY $c6
CA7A  c8        INY
CA7B  ca        DEX
CA7C  cc ce d0  CPY $d0ce
CA7F  d2        ???
CA80  d4        ???
CA81  d6 d8     DEC $d8,X
CA83  20 20 20  JSR $2020
CA86  20 20 20  JSR $2020
CA89  20 20 20  JSR $2020
CA8C  20 20 20  JSR $2020
CA8F  20 20 20  JSR $2020
CA92  20 20 20  JSR $2020
CA95  20 c1 c3  JSR $c3c1
CA98  c5 c7     CMP $c7
CA9A  c9 cb     CMP #$cb
CA9C  cd cf d1  CMP $d1cf
CA9F  d3        ???
CAA0  d5 d7     CMP $d7,X
CAA2  d9 20 20  CMP $2020,Y
CAA5  20 20 20  JSR $2020
CAA8  20 20 20  JSR $2020
CAAB  20 20 20  JSR $2020
CAAE  20 20 20  JSR $2020
CAB1  20 20 20  JSR $2020
CAB4  20 20 20  JSR $2020
CAB7  20 20 20  JSR $2020
CABA  20 20 20  JSR $2020
CABD  20 20 20  JSR $2020
CAC0  20 20 20  JSR $2020
CAC3  20 20 20  JSR $2020
CAC6  20 20 20  JSR $2020
CAC9  20 20 20  JSR $2020
CACC  20 20 20  JSR $2020
CACF  20 20 20  JSR $2020
CAD2  20 20 20  JSR $2020
CAD5  20 20 20  JSR $2020
CAD8  20 20 94  JSR $9420
CADB  96 98     STX $98,Y
CADD  9a        TXS
CADE  9c        ???
CADF  9e        ???
CAE0  20 20 20  JSR $2020
CAE3  20 20 20  JSR $2020
CAE6  20 20 20  JSR $2020
CAE9  20 20 20  JSR $2020
CAEC  20 20 20  JSR $2020
CAEF  20 20 20  JSR $2020
CAF2  20 20 20  JSR $2020
CAF5  20 20 20  JSR $2020
CAF8  20 20 95  JSR $9520
CAFB  97        ???
CAFC  99 9b 9d  STA $9d9b,Y
CAFF  9f        ???
CB00  20 20 20  JSR $2020
CB03  20 20 20  JSR $2020
CB06  20 20 20  JSR $2020
CB09  20 20 20  JSR $2020
CB0C  20 20 20  JSR $2020
CB0F  20 20 20  JSR $2020
CB12  20 20 20  JSR $2020
CB15  20 20 20  JSR $2020
CB18  20 20 b4  JSR $b420
CB1B  b6 b8     LDX $b8,Y
CB1D  ba        TSX
CB1E  bc be 20  LDY $20be,X
CB21  20 20 20  JSR $2020
CB24  20 20 20  JSR $2020
CB27  20 20 20  JSR $2020
CB2A  20 20 20  JSR $2020
CB2D  20 20 20  JSR $2020
CB30  20 20 20  JSR $2020
CB33  20 20 20  JSR $2020
CB36  20 20 20  JSR $2020
CB39  20 20 20  JSR $2020
CB3C  20 20 20  JSR $2020
CB3F  20 20 20  JSR $2020
CB42  20 20 20  JSR $2020
CB45  20 20 20  JSR $2020
CB48  20 20 20  JSR $2020
CB4B  20 20 20  JSR $2020
CB4E  20 20 20  JSR $2020
CB51  20 20 20  JSR $2020
CB54  20 20 54  JSR $5420
CB57  58        CLI
CB58  43        ???
CB59  20 43 4f  JSR $4f43
CB5C  52        ???
CB5D  50 4f     BVC $cbae
CB5F  52        ???
CB60  41 54     EOR ($54,X)
CB62  49 4f     EOR #$4f
CB64  4e 20 20  LSR $2020
CB67  20 20 20  JSR $2020
CB6A  20 20 20  JSR $2020
CB6D  20 20 20  JSR $2020
CB70  20 20 20  JSR $2020
CB73  20 20 20  JSR $2020
CB76  20 20 20  JSR $2020
CB79  20 20 20  JSR $2020
CB7C  20 20 20  JSR $2020
CB7F  20 20 20  JSR $2020
CB82  20 20 20  JSR $2020
CB85  20 20 20  JSR $2020
CB88  20 20 20  JSR $2020
CB8B  20 20 20  JSR $2020
CB8E  20 20 20  JSR $2020
CB91  20 20 20  JSR $2020
CB94  20 40 20  JSR $2040
CB97  31 39     AND ($39),Y
CB99  39 31 20  AND $2031,Y
CB9C  43        ???
CB9D  4f        ???
CB9E  50 59     BVC $cbf9
CBA0  52        ???
CBA1  49 47     EOR #$47
CBA3  48        PHA
CBA4  54        ???
CBA5  20 20 20  JSR $2020
CBA8  20 20 20  JSR $2020
CBAB  20 20 20  JSR $2020
CBAE  20 20 20  JSR $2020
CBB1  20 20 20  JSR $2020
CBB4  20 20 20  JSR $2020
CBB7  20 20 20  JSR $2020
CBBA  20 20 20  JSR $2020
CBBD  20 20 20  JSR $2020
CBC0  20 20 20  JSR $2020
CBC3  20 20 20  JSR $2020
CBC6  20 20 20  JSR $2020
CBC9  20 20 20  JSR $2020
CBCC  20 20 20  JSR $2020
CBCF  20 20 20  JSR $2020
CBD2  20 20 20  JSR $2020
CBD5  20 20 dc  JSR $dc20
CBD8  de f0 f2  DEC $f2f0,X
CBDB  da        ???
CBDC  20 f4 f6  JSR $f6f4
CBDF  f8        SED
CBE0  fa        ???
CBE1  fc        ???
CBE2  fe 20 20  INC $2020,X
CBE5  20 20 20  JSR $2020
CBE8  20 20 20  JSR $2020
CBEB  20 20 20  JSR $2020
CBEE  20 20 20  JSR $2020
CBF1  20 20 20  JSR $2020
CBF4  20 20 20  JSR $2020
CBF7  dd df f1  CMP $f1df,X
CBFA  f3        ???
CBFB  db        ???
CBFC  20 f5 f7  JSR $f7f5
CBFF  f9 fb fd  SBC $fdfb,Y
CC02  ff        ???
CC03  20 20 20  JSR $2020
CC06  20 20 20  JSR $2020
CC09  20 20 20  JSR $2020
CC0C  20 20 20  JSR $2020
CC0F  20 20 20  JSR $2020
CC12  20 20 20  JSR $2020
CC15  20 20 20  JSR $2020
CC18  20 20 20  JSR $2020
CC1B  20 20 20  JSR $2020
CC1E  20 bd bf  JSR $bfbd
CC21  20 20 20  JSR $2020
CC24  20 20 20  JSR $2020
CC27  20 20 20  JSR $2020
CC2A  20 20 20  JSR $2020
CC2D  20 20 20  JSR $2020
CC30  20 20 20  JSR $2020
CC33  20 20 20  JSR $2020
CC36  20 20 20  JSR $2020
CC39  20 20 20  JSR $2020
CC3C  20 20 20  JSR $2020
CC3F  20 20 20  JSR $2020
CC42  20 20 20  JSR $2020
CC45  20 20 20  JSR $2020
CC48  20 20 20  JSR $2020
CC4B  20 20 20  JSR $2020
CC4E  20 20 20  JSR $2020
CC51  20 20 20  JSR $2020
CC54  20 20 20  JSR $2020
CC57  20 20 20  JSR $2020
CC5A  20 20 20  JSR $2020
CC5D  20 20 20  JSR $2020
CC60  20 20 20  JSR $2020
CC63  20 20 20  JSR $2020
CC66  20 20 20  JSR $2020
CC69  20 20 20  JSR $2020
CC6C  20 00 00  JSR $0000
CC6F  00        BRK
CC70  00        BRK
CC71  00        BRK
CC72  00        BRK
CC73  00        BRK
CC74  00        BRK
CC75  00        BRK
CC76  00        BRK
CC77  00        BRK
CC78  00        BRK
CC79  00        BRK
CC7A  00        BRK
CC7B  00        BRK
CC7C  00        BRK
CC7D  50 50     BVC $cccf
CC7F  50 50     BVC $ccd1
CC81  50 50     BVC $ccd3
CC83  50 50     BVC $ccd5
CC85  55 55     EOR $55,X
CC87  55 55     EOR $55,X
CC89  55 55     EOR $55,X
CC8B  55 55     EOR $55,X
CC8D  aa        TAX
CC8E  aa        TAX
CC8F  aa        TAX
CC90  aa        TAX
CC91  aa        TAX
CC92  aa        TAX
CC93  aa        TAX
CC94  aa        TAX
CC95  ff        ???
CC96  ff        ???
CC97  ff        ???
CC98  ff        ???
CC99  ff        ???
CC9A  ff        ???
CC9B  ff        ???
CC9C  ff        ???
CC9D  ff        ???
CC9E  ff        ???
CC9F  ff        ???
CCA0  ff        ???
CCA1  ff        ???
CCA2  ff        ???
CCA3  ff        ???
CCA4  ff        ???
CCA5  ff        ???
CCA6  ff        ???
CCA7  ff        ???
CCA8  ff        ???
CCA9  ff        ???
CCAA  ff        ???
CCAB  ff        ???
CCAC  ff        ???
CCAD  20 48 8a  JSR $8a48
CCB0  48        PHA
CCB1  98        TYA
CCB2  48        PHA
CCB3  a5 c0     LDA $c0
CCB5  48        PHA
CCB6  a5 c1     LDA $c1
CCB8  48        PHA
CCB9  20 49 80  JSR $8049
CCBC  d0 0c     BNE $ccca
CCBE  a9 00     LDA #$00
CCC0  a6 c0     LDX $c0
CCC2  a4 c1     LDY $c1
CCC4  20 9e ce  JSR $ce9e
CCC7  20 dc cc  JSR $ccdc
CCCA  68        PLA
CCCB  85 c1     STA $c1
CCCD  68        PLA
CCCE  85 c0     STA $c0
CCD0  68        PLA
CCD1  a8        TAY
CCD2  68        PLA
CCD3  aa        TAX
CCD4  68        PLA
CCD5  60        RTS
CCD6  20 53 4c  JSR $4c53
CCD9  5e cf b6  LSR $b6cf,X
CCDC  48        PHA
CCDD  20 8c ce  JSR $ce8c
CCE0  a5 b6     LDA $b6
CCE2  10 3f     BPL $cd23
CCE4  a9 00     LDA #$00
CCE6  20 0c ff  JSR $ff0c
CCE9  29 80     AND #$80
CCEB  d0 2b     BNE $cd18
CCED  e6 b5     INC $b5
CCEF  d0 02     BNE $ccf3
CCF1  e6 b6     INC $b6
CCF3  a9 00     LDA #$00
CCF5  20 0c ff  JSR $ff0c
CCF8  29 3f     AND #$3f
CCFA  ba        TSX
CCFB  dd 01 01  CMP $0101,X
CCFE  f0 23     BEQ $cd23
CD00  a9 01     LDA #$01
CD02  20 0c ff  JSR $ff0c
CD05  90 f1     BCC $ccf8
CD07  a9 ff     LDA #$ff
CD09  20 0c ff  JSR $ff0c
CD0C  90 f9     BCC $cd07
CD0E  c6 b5     DEC $b5
CD10  a5 b5     LDA $b5
CD12  c9 ff     CMP #$ff
CD14  d0 02     BNE $cd18
CD16  c6 b6     DEC $b6
CD18  a5 b6     LDA $b6
CD1A  29 7f     AND #$7f
CD1C  85 b6     STA $b6
CD1E  ad 88 03  LDA $0388
CD21  85 b9     STA $b9
CD23  68        PLA
CD24  60        RTS
CD25  c9 20     CMP #$20
CD27  50 e5     BVC $cd0e
CD29  a5 ba     LDA $ba
CD2B  d0 1f     BNE $cd4c
CD2D  a6 b8     LDX $b8
CD2F  bd 6e d0  LDA $d06e,X
CD32  20 97 85  JSR $8597
CD35  a5 c0     LDA $c0
CD37  30 03     BMI $cd3c
CD39  20 9e e4  JSR $e49e
CD3C  e6 b5     INC $b5
CD3E  a5 b5     LDA $b5
CD40  c9 20     CMP #$20
CD42  d0 06     BNE $cd4a
CD44  a9 7f     LDA #$7f
CD46  25 b6     AND $b6
CD48  85 b6     STA $b6
CD4A  18        CLC
CD4B  60        RTS
CD4C  a5 b8     LDA $b8
CD4E  c9 18     CMP #$18
CD50  90 0e     BCC $cd60
CD52  a5 b5     LDA $b5
CD54  d0 0a     BNE $cd60
CD56  a5 b6     LDA $b6
CD58  d0 06     BNE $cd60
CD5A  a2 08     LDX #$08
CD5C  e0 08     CPX #$08
CD5E  f0 02     BEQ $cd62
CD60  a6 b8     LDX $b8
CD62  bd 6e d0  LDA $d06e,X
CD65  20 97 85  JSR $8597
CD68  a5 c0     LDA $c0
CD6A  30 03     BMI $cd6f
CD6C  20 9e e4  JSR $e49e
CD6F  e6 b5     INC $b5
CD71  d0 02     BNE $cd75
CD73  e6 b6     INC $b6
CD75  18        CLC
CD76  60        RTS
CD77  ff        ???
CD78  ff        ???
CD79  ff        ???
CD7A  ff        ???
CD7B  b5 d0     LDA $d0,X
CD7D  02        ???
CD7E  e6 b6     INC $b6
CD80  18        CLC
CD81  60        RTS
CD82  b5 d0     LDA $d0,X
CD84  02        ???
CD85  e6 b6     INC $b6
CD87  18        CLC
CD88  60        RTS
CD89  ce a5 b6  DEC $b6a5
CD8C  10 2a     BPL $cdb8
CD8E  a9 00     LDA #$00
CD90  20 0c ff  JSR $ff0c
CD93  29 80     AND #$80
CD95  d0 16     BNE $cdad
CD97  e6 b5     INC $b5
CD99  d0 02     BNE $cd9d
CD9B  e6 b6     INC $b6
CD9D  a9 00     LDA #$00
CD9F  20 0c ff  JSR $ff0c
CDA2  29 3f     AND #$3f
CDA4  20 9e ce  JSR $ce9e
CDA7  20 9e e4  JSR $e49e
CDAA  18        CLC
CDAB  60        RTS
CDAC  8e a5 b6  STX $b6a5
CDAF  29 7f     AND #$7f
CDB1  85 b6     STA $b6
CDB3  ad 88 03  LDA $0388
CDB6  85 b9     STA $b9
CDB8  38        SEC
CDB9  60        RTS
CDBA  aa        TAX
CDBB  8e a9 64  STX $64a9
CDBE  0a        ASL A
CDBF  8d 4d 04  STA $044d
CDC2  0a        ASL A
CDC3  0a        ASL A
CDC4  38        SEC
CDC5  e9 20     SBC #$20
CDC7  a2 fd     LDX #$fd
CDC9  8e 37 04  STX $0437
CDCC  a2 d1     LDX #$d1
CDCE  8e 55 04  STX $0455
CDD1  a8        TAY
CDD2  a2 43     LDX #$43
CDD4  b1 d0     LDA ($d0),Y
CDD6  4d 5f 04  EOR $045f
CDD9  8d 5f 04  STA $045f
CDDC  c8        INY
CDDD  ca        DEX
CDDE  d0 f4     BNE $cdd4
CDE0  4c e4 cd  JMP $cde4
CDE3  a9 4c     LDA #$4c
CDE5  7e e1 20  ROR $20e1,X
CDE8  20 8c ce  JSR $ce8c
CDEB  a5 b6     LDA $b6
CDED  10 20     BPL $ce0f
CDEF  c9 80     CMP #$80
CDF1  d0 04     BNE $cdf7
CDF3  a5 b5     LDA $b5
CDF5  f0 18     BEQ $ce0f
CDF7  a9 ff     LDA #$ff
CDF9  20 0c ff  JSR $ff0c
CDFC  90 f9     BCC $cdf7
CDFE  c6 b5     DEC $b5
CE00  a5 b5     LDA $b5
CE02  c9 ff     CMP #$ff
CE04  d0 02     BNE $ce08
CE06  c6 b6     DEC $b6
CE08  20 02 e5  JSR $e502
CE0B  18        CLC
CE0C  60        RTS
CE0D  7e 6a 20  ROR $206a,X
CE10  02        ???
CE11  e5 38     SBC $38
CE13  60        RTS
CE14  38        SEC
CE15  e9 20     SBC #$20
CE17  8c ce a5  STY $a5ce
CE1A  b6 10     LDX $10,Y
CE1C  1a        ???
CE1D  a9 ff     LDA #$ff
CE1F  20 0c ff  JSR $ff0c
CE22  b0 13     BCS $ce37
CE24  29 3f     AND #$3f
CE26  f0 0f     BEQ $ce37
CE28  48        PHA
CE29  20 02 e5  JSR $e502
CE2C  68        PLA
CE2D  20 9e ce  JSR $ce9e
CE30  20 9e e4  JSR $e49e
CE33  18        CLC
CE34  60        RTS
CE35  20 44 38  JSR $3844
CE38  60        RTS
CE39  4c 20 8c  JMP $8c20
CE3C  ce a5 b6  DEC $b6a5
CE3F  10 18     BPL $ce59
CE41  a9 01     LDA #$01
CE43  20 0c ff  JSR $ff0c
CE46  b0 11     BCS $ce59
CE48  29 3f     AND #$3f
CE4A  f0 0d     BEQ $ce59
CE4C  48        PHA
CE4D  20 02 e5  JSR $e502
CE50  68        PLA
CE51  20 9e ce  JSR $ce9e
CE54  20 9e e4  JSR $e49e
CE57  60        RTS
CE58  20 38 60  JSR $6038
CE5B  a0 20     LDY #$20
CE5D  8c ce a5  STY $a5ce
CE60  b6 10     LDX $10,Y
CE62  26 a9     ROL $a9
CE64  01 20     ORA ($20,X)
CE66  0c        ???
CE67  ff        ???
CE68  b0 04     BCS $ce6e
CE6A  29 3f     AND #$3f
CE6C  d0 0b     BNE $ce79
CE6E  a9 ff     LDA #$ff
CE70  20 0c ff  JSR $ff0c
CE73  90 f9     BCC $ce6e
CE75  29 3f     AND #$3f
CE77  f0 10     BEQ $ce89
CE79  48        PHA
CE7A  20 02 e5  JSR $e502
CE7D  68        PLA
CE7E  29 3f     AND #$3f
CE80  20 9e ce  JSR $ce9e
CE83  20 9e e4  JSR $e49e
CE86  18        CLC
CE87  60        RTS
CE88  a5 38     LDA $38
CE8A  60        RTS
CE8B  f6 48     INC $48,X
CE8D  ad 88 03  LDA $0388
CE90  c5 b9     CMP $b9
CE92  d0 06     BNE $ce9a
CE94  a5 b6     LDA $b6
CE96  09 80     ORA #$80
CE98  85 b6     STA $b6
CE9A  68        PLA
CE9B  60        RTS
CE9C  6c 00 48  JMP ($4800)
CE9F  8a        TXA
CEA0  48        PHA
CEA1  98        TYA
CEA2  48        PHA
CEA3  a5 c7     LDA $c7
CEA5  29 30     AND #$30
CEA7  48        PHA
CEA8  48        PHA
CEA9  ba        TSX
CEAA  8e 72 05  STX $0572
CEAD  a9 00     LDA #$00
CEAF  9d 01 01  STA $0101,X
CEB2  20 22 cf  JSR $cf22
CEB5  20 7a cf  JSR $cf7a
CEB8  38        SEC
CEB9  68        PLA
CEBA  68        PLA
CEBB  68        PLA
CEBC  a8        TAY
CEBD  68        PLA
CEBE  aa        TAX
CEBF  68        PLA
CEC0  60        RTS
CEC1  6c fe a9  JMP ($a9fe)
CEC4  d2        ???
CEC5  49 85     EOR #$85
CEC7  8d d2 00  STA $00d2
CECA  a9 6e     LDA #$6e
CECC  49 6a     EOR #$6a
CECE  8d d3 00  STA $00d3
CED1  a9 ec     LDA #$ec
CED3  49 bc     EOR #$bc
CED5  8d d0 00  STA $00d0
CED8  a9 af     LDA #$af
CEDA  49 ab     EOR #$ab
CEDC  8d d1 00  STA $00d1
CEDF  a9 58     LDA #$58
CEE1  51 d0     EOR ($d0),Y
CEE3  51 d2     EOR ($d2),Y
CEE5  91 d0     STA ($d0),Y
CEE7  60        RTS
CEE8  4e 63 48  LSR $4863
CEEB  8a        TXA
CEEC  48        PHA
CEED  98        TYA
CEEE  48        PHA
CEEF  ae 72 05  LDX $0572
CEF2  fe 01 01  INC $0101,X
CEF5  bd 05 01  LDA $0105,X
CEF8  d0 18     BNE $cf12
CEFA  a5 c0     LDA $c0
CEFC  dd 04 01  CMP $0104,X
CEFF  d0 1a     BNE $cf1b
CF01  a5 c1     LDA $c1
CF03  dd 03 01  CMP $0103,X
CF06  d0 13     BNE $cf1b
CF08  bd 01 01  LDA $0101,X
CF0B  9d 05 01  STA $0105,X
CF0E  4c 17 cf  JMP $cf17
CF11  c6 dd     DEC $dd
CF13  01 01     ORA ($01,X)
CF15  d0 04     BNE $cf1b
CF17  e8        INX
CF18  e8        INX
CF19  9a        TXS
CF1A  18        CLC
CF1B  68        PLA
CF1C  a8        TAY
CF1D  68        PLA
CF1E  aa        TAX
CF1F  68        PLA
CF20  60        RTS
CF21  45 ae     EOR $ae
CF23  72        ???
CF24  05 bd     ORA $bd
CF26  02        ???
CF27  01 49     ORA ($49,X)
CF29  30 aa     BMI $ced5
CF2B  8a        TXA
CF2C  48        PHA
CF2D  b5 84     LDA $84,X
CF2F  30 22     BMI $cf53
CF31  85 c1     STA $c1
CF33  8a        TXA
CF34  29 30     AND #$30
CF36  49 30     EOR #$30
CF38  18        CLC
CF39  69 0f     ADC #$0f
CF3B  aa        TAX
CF3C  8a        TXA
CF3D  48        PHA
CF3E  b5 84     LDA $84,X
CF40  30 0a     BMI $cf4c
CF42  85 c0     STA $c0
CF44  20 49 80  JSR $8049
CF47  d0 03     BNE $cf4c
CF49  20 ea ce  JSR $ceea
CF4C  68        PLA
CF4D  aa        TAX
CF4E  ca        DEX
CF4F  29 0f     AND #$0f
CF51  d0 e9     BNE $cf3c
CF53  68        PLA
CF54  aa        TAX
CF55  e8        INX
CF56  8a        TXA
CF57  29 0f     AND #$0f
CF59  d0 d0     BNE $cf2b
CF5B  60        RTS
CF5C  ad 20 a2  LDA $a220
CF5F  80        ???
CF60  a9 07     LDA #$07
CF62  8d 62 07  STA $0762
CF65  a9 80     LDA #$80
CF67  8d 61 07  STA $0761
CF6A  a9 07     LDA #$07
CF6C  a0 20     LDY #$20
CF6E  8e d0 00  STX $00d0
CF71  8d d1 00  STA $00d1
CF74  4c 5b d9  JMP $d95b
CF77  00        BRK
CF78  e8        INX
CF79  be ae 72  LDX $72ae,Y
CF7C  05 bd     ORA $bd
CF7E  02        ???
CF7F  01 aa     ORA ($aa,X)
CF81  8a        TXA
CF82  48        PHA
CF83  b5 84     LDA $84,X
CF85  30 2a     BMI $cfb1
CF87  85 c0     STA $c0
CF89  bd aa cf  LDA $cfaa,X
CF8C  a8        TAY
CF8D  b9 da cf  LDA $cfda,Y
CF90  f0 1f     BEQ $cfb1
CF92  18        CLC
CF93  65 c0     ADC $c0
CF95  85 c1     STA $c1
CF97  aa        TAX
CF98  98        TYA
CF99  48        PHA
CF9A  e0 84     CPX #$84
CF9C  b0 0c     BCS $cfaa
CF9E  b5 00     LDA $00,X
CFA0  d0 08     BNE $cfaa
CFA2  20 49 80  JSR $8049
CFA5  d0 03     BNE $cfaa
CFA7  20 ea ce  JSR $ceea
CFAA  68        PLA
CFAB  a8        TAY
CFAC  c8        INY
CFAD  4c 8d cf  JMP $cf8d
CFB0  bd 68 aa  LDA $aa68,X
CFB3  e8        INX
CFB4  8a        TXA
CFB5  29 0f     AND #$0f
CFB7  d0 c8     BNE $cf81
CFB9  60        RTS
CFBA  36 13     ROL $13,X
CFBC  13        ???
CFBD  13        ???
CFBE  13        ???
CFBF  0a        ASL A
CFC0  0a        ASL A
CFC1  00        BRK
CFC2  00        BRK
CFC3  05 05     ORA $05
CFC5  36 36     ROL $36,X
CFC7  36 36     ROL $36,X
CFC9  36 36     ROL $36,X
CFCB  13        ???
CFCC  13        ???
CFCD  13        ???
CFCE  13        ???
CFCF  0a        ASL A
CFD0  0a        ASL A
CFD1  00        BRK
CFD2  00        BRK
CFD3  05 05     ORA $05
CFD5  36 36     ROL $36,X
CFD7  36 36     ROL $36,X
CFD9  36 f3     ROL $f3,X
CFDB  0b        ???
CFDC  f5 0d     SBC $0d,X
CFDE  00        BRK
CFDF  e6 16     INC $16
CFE1  ea        NOP
CFE2  1a        ???
CFE3  00        BRK
CFE4  f2        ???
CFE5  0a        ASL A
CFE6  f6 0e     INC $0e,X
CFE8  e7        ???
CFE9  e9 17     SBC #$17
CFEB  19 00 ff  ORA $ff00,Y
CFEE  fe fd fc  INC $fcfd,X
CFF1  fb        ???
CFF2  fa        ???
CFF3  f9 f8 f7  SBC $f7f8,Y
CFF6  01 02     ORA ($02,X)
CFF8  03        ???
CFF9  04        ???
CFFA  05 06     ORA $06
CFFC  07        ???
CFFD  08        PHP
CFFE  09 f4     ORA #$f4
D000  e8        INX
D001  dc        ???
D002  d0 c4     BNE $cfc8
D004  b8        CLV
D005  ac a0 0c  LDY $0ca0
D008  18        CLC
D009  24 30     BIT $30
D00B  3c        ???
D00C  48        PHA
D00D  54        ???
D00E  60        RTS
D00F  00        BRK
D010  ff        ???
D011  01 f4     ORA ($f4,X)
D013  0c        ???
D014  00        BRK
D015  55 a9     EOR $a9,X
D017  68        PLA
D018  01 a9     ORA ($a9,X)
D01A  00        BRK
D01B  8d 8f 00  STA $008f
D01E  a9 00     LDA #$00
D020  8d 62 03  STA $0362
D023  20 a1 d5  JSR $d5a1
D026  20 ad c8  JSR $c8ad
D029  20 86 d6  JSR $d686
D02C  20 4f d1  JSR $d14f
D02F  a6 b8     LDX $b8
D031  e0 08     CPX #$08
D033  b0 15     BCS $d04a
D035  20 f7 d7  JSR $d7f7
D038  e6 b8     INC $b8
D03A  a5 b8     LDA $b8
D03C  c9 08     CMP #$08
D03E  d0 ec     BNE $d02c
D040  a9 00     LDA #$00
D042  85 b8     STA $b8
D044  4c 2c d0  JMP $d02c
D047  d0 fe     BNE $d047
D049  48        PHA
D04A  a5 c7     LDA $c7
D04C  4a        LSR A
D04D  4a        LSR A
D04E  25 c7     AND $c7
D050  29 03     AND #$03
D052  f0 14     BEQ $d068
D054  20 f7 d7  JSR $d7f7
D057  e6 b8     INC $b8
D059  a5 b8     LDA $b8
D05B  c9 20     CMP #$20
D05D  d0 cd     BNE $d02c
D05F  a9 08     LDA #$08
D061  85 b8     STA $b8
D063  4c 2c d0  JMP $d02c
D066  7d 87 20  ADC $2087,X
D069  bb        ???
D06A  d7        ???
D06B  4c 19 d0  JMP $d019
D06E  02        ???
D06F  02        ???
D070  02        ???
D071  02        ???
D072  02        ???
D073  02        ???
D074  02        ???
D075  02        ???
D076  02        ???
D077  02        ???
D078  02        ???
D079  02        ???
D07A  02        ???
D07B  02        ???
D07C  02        ???
D07D  02        ???
D07E  03        ???
D07F  03        ???
D080  03        ???
D081  03        ???
D082  03        ???
D083  03        ???
D084  03        ???
D085  03        ???
D086  04        ???
D087  04        ???
D088  04        ???
D089  04        ???
D08A  04        ???
D08B  04        ???
D08C  04        ???
D08D  04        ???
D08E  00        BRK
D08F  00        BRK
D090  2d 1e 14  AND $141e
D093  0f        ???
D094  0a        ASL A
D095  05 00     ORA $00
D097  00        BRK
D098  2d 1e 14  AND $141e
D09B  0f        ???
D09C  0a        ASL A
D09D  05 00     ORA $00
D09F  00        BRK
D0A0  2d 1e 14  AND $141e
D0A3  0f        ???
D0A4  0a        ASL A
D0A5  05 00     ORA $00
D0A7  00        BRK
D0A8  2d 1e 14  AND $141e
D0AB  0f        ???
D0AC  0a        ASL A
D0AD  05 03     ORA $03
D0AF  01 00     ORA ($00,X)
D0B1  00        BRK
D0B2  00        BRK
D0B3  00        BRK
D0B4  00        BRK
D0B5  00        BRK
D0B6  03        ???
D0B7  01 00     ORA ($00,X)
D0B9  00        BRK
D0BA  00        BRK
D0BB  00        BRK
D0BC  00        BRK
D0BD  00        BRK
D0BE  03        ???
D0BF  01 00     ORA ($00,X)
D0C1  00        BRK
D0C2  00        BRK
D0C3  00        BRK
D0C4  00        BRK
D0C5  00        BRK
D0C6  03        ???
D0C7  01 00     ORA ($00,X)
D0C9  00        BRK
D0CA  00        BRK
D0CB  00        BRK
D0CC  00        BRK
D0CD  00        BRK
D0CE  00        BRK
D0CF  03        ???
D0D0  00        BRK
D0D1  03        ???
D0D2  00        BRK
D0D3  03        ???
D0D4  00        BRK
D0D5  03        ???
D0D6  00        BRK
D0D7  03        ???
D0D8  00        BRK
D0D9  03        ???
D0DA  00        BRK
D0DB  03        ???
D0DC  00        BRK
D0DD  03        ???
D0DE  00        BRK
D0DF  03        ???
D0E0  00        BRK
D0E1  03        ???
D0E2  00        BRK
D0E3  03        ???
D0E4  00        BRK
D0E5  03        ???
D0E6  00        BRK
D0E7  03        ???
D0E8  00        BRK
D0E9  03        ???
D0EA  00        BRK
D0EB  03        ???
D0EC  00        BRK
D0ED  03        ???
D0EE  20 20 20  JSR $2020
D0F1  20 20 20  JSR $2020
D0F4  20 20 21  JSR $2120
D0F7  a2 21     LDX #$21
D0F9  a2 21     LDX #$21
D0FB  a2 21     LDX #$21
D0FD  a2 21     LDX #$21
D0FF  a2 21     LDX #$21
D101  a2 21     LDX #$21
D103  a2 21     LDX #$21
D105  a2 21     LDX #$21
D107  a2 21     LDX #$21
D109  a2 21     LDX #$21
D10B  a2 21     LDX #$21
D10D  a2 08     LDX #$08
D10F  07        ???
D110  06 05     ASL $05
D112  04        ???
D113  03        ???
D114  02        ???
D115  01 09     ORA ($09,X)
D117  09 09     ORA #$09
D119  09 08     ORA #$08
D11B  08        PHP
D11C  07        ???
D11D  07        ???
D11E  06 06     ASL $06
D120  06 06     ASL $06
D122  05 05     ORA $05
D124  04        ???
D125  04        ???
D126  03        ???
D127  03        ???
D128  03        ???
D129  03        ???
D12A  02        ???
D12B  02        ???
D12C  01 01     ORA ($01,X)
D12E  00        BRK
D12F  00        BRK
D130  00        BRK
D131  00        BRK
D132  00        BRK
D133  00        BRK
D134  00        BRK
D135  00        BRK
D136  00        BRK
D137  00        BRK
D138  33        ???
D139  33        ???
D13A  33        ???
D13B  33        ???
D13C  33        ???
D13D  33        ???
D13E  00        BRK
D13F  00        BRK
D140  33        ???
D141  33        ???
D142  33        ???
D143  33        ???
D144  33        ???
D145  33        ???
D146  00        BRK
D147  00        BRK
D148  33        ???
D149  33        ???
D14A  33        ???
D14B  33        ???
D14C  33        ???
D14D  33        ???
D14E  1e a9 02  ASL $02a9,X
D151  85 ba     STA $ba
D153  a9 10     LDA #$10
D155  8d 8f 00  STA $008f
D158  a9 00     LDA #$00
D15A  8d 62 03  STA $0362
D15D  20 cd bb  JSR $bbcd
D160  a2 00     LDX #$00
D162  20 2c ff  JSR $ff2c
D165  a6 b8     LDX $b8
D167  a5 b4     LDA $b4
D169  29 f0     AND #$f0
D16B  1d ce d0  ORA $d0ce,X
D16E  85 b4     STA $b4
D170  20 1b dc  JSR $dc1b
D173  20 bc e0  JSR $e0bc
D176  20 a9 e0  JSR $e0a9
D179  20 c0 ba  JSR $bac0
D17C  20 28 d9  JSR $d928
D17F  20 1d be  JSR $be1d
D182  a9 00     LDA #$00
D184  8d 88 03  STA $0388
D187  85 b9     STA $b9
D189  a9 ff     LDA #$ff
D18B  8d bb 00  STA $00bb
D18E  8d 84 03  STA $0384
D191  8d 85 03  STA $0385
D194  a9 80     LDA #$80
D196  85 b6     STA $b6
D198  a9 00     LDA #$00
D19A  85 b5     STA $b5
D19C  a6 b8     LDX $b8
D19E  bd ee d0  LDA $d0ee,X
D1A1  85 c7     STA $c7
D1A3  a9 ff     LDA #$ff
D1A5  20 d2 ff  JSR $ffd2
D1A8  a5 c7     LDA $c7
D1AA  29 40     AND #$40
D1AC  f0 15     BEQ $d1c3
D1AE  20 01 d5  JSR $d501
D1B1  20 20 db  JSR $db20
D1B4  20 a8 db  JSR $dba8
D1B7  a2 00     LDX #$00
D1B9  20 9e d9  JSR $d99e
D1BC  a2 01     LDX #$01
D1BE  20 9e d9  JSR $d99e
D1C1  60        RTS
D1C2  f0 a5     BEQ $d169
D1C4  c7        ???
D1C5  10 e1     BPL $d1a8
D1C7  a5 b8     LDA $b8
D1C9  c9 08     CMP #$08
D1CB  90 24     BCC $d1f1
D1CD  a5 94     LDA $94
D1CF  30 20     BMI $d1f1
D1D1  a5 a4     LDA $a4
D1D3  30 1c     BMI $d1f1
D1D5  20 c2 f2  JSR $f2c2
D1D8  d0 05     BNE $d1df
D1DA  20 26 cd  JSR $cd26
D1DD  90 12     BCC $d1f1
D1DF  20 50 e5  JSR $e550
D1E2  a6 b8     LDX $b8
D1E4  bd 6e d0  LDA $d06e,X
D1E7  20 97 85  JSR $8597
D1EA  a5 c0     LDA $c0
D1EC  30 03     BMI $d1f1
D1EE  20 9e e4  JSR $e49e
D1F1  20 6a e0  JSR $e06a
D1F4  25 c7     AND $c7
D1F6  85 c7     STA $c7
D1F8  4c a8 d1  JMP $d1a8
D1FB  5e 39 a9  LSR $a939,X
D1FE  35 8d     AND $8d,X
D200  55 04     EOR $04,X
D202  ad 4d 04  LDA $044d
D205  0a        ASL A
D206  b0 04     BCS $d20c
D208  4c d4 cd  JMP $cdd4
D20B  4c 0e 55  JMP $550e
D20E  04        ???
D20F  0a        ASL A
D210  b0 04     BCS $d216
D212  4c 97 c8  JMP $c897
D215  4c 0e 55  JMP $550e
D218  04        ???
D219  0a        ASL A
D21A  b0 04     BCS $d220
D21C  4c 89 e9  JMP $e989
D21F  4c 0e 55  JMP $550e
D222  04        ???
D223  0a        ASL A
D224  b0 01     BCS $d227
D226  4c 0e 55  JMP $550e
D229  04        ???
D22A  0a        ASL A
D22B  b0 03     BCS $d230
D22D  6c d0 00  JMP ($00d0)
D230  60        RTS
D231  4c 6c 20  JMP $206c
D234  51 bd     EOR ($bd),Y
D236  20 f9 bb  JSR $bbf9
D239  20 47 d2  JSR $d247
D23C  a2 00     LDX #$00
D23E  a9 30     LDA #$30
D240  20 ce f1  JSR $f1ce
D243  60        RTS
D244  68        PLA
D245  60        RTS
D246  3e a2 01  ROL $01a2,X
D249  20 4e d2  JSR $d24e
D24C  a2 00     LDX #$00
D24E  bd e0 00  LDA $00e0,X
D251  29 20     AND #$20
D253  f0 0b     BEQ $d260
D255  bd de 00  LDA $00de,X
D258  29 10     AND #$10
D25A  f0 04     BEQ $d260
D25C  6c fc ff  JMP ($fffc)
D25F  fe bd de  INC $debd,X
D262  00        BRK
D263  29 08     AND #$08
D265  f0 09     BEQ $d270
D267  de 82 03  DEC $0382,X
D26A  de 82 03  DEC $0382,X
D26D  20 a8 d9  JSR $d9a8
D270  bd de 00  LDA $00de,X
D273  29 04     AND #$04
D275  f0 09     BEQ $d280
D277  fe 82 03  INC $0382,X
D27A  fe 82 03  INC $0382,X
D27D  20 a8 d9  JSR $d9a8
D280  bd de 00  LDA $00de,X
D283  29 02     AND #$02
D285  f0 09     BEQ $d290
D287  de 80 03  DEC $0380,X
D28A  de 80 03  DEC $0380,X
D28D  20 a8 d9  JSR $d9a8
D290  bd de 00  LDA $00de,X
D293  29 01     AND #$01
D295  f0 09     BEQ $d2a0
D297  fe 80 03  INC $0380,X
D29A  fe 80 03  INC $0380,X
D29D  20 a8 d9  JSR $d9a8
D2A0  bd e0 00  LDA $00e0,X
D2A3  29 10     AND #$10
D2A5  f0 00     BEQ $d2a7
D2A7  bd e0 00  LDA $00e0,X
D2AA  29 20     AND #$20
D2AC  f0 0e     BEQ $d2bc
D2AE  bd de 00  LDA $00de,X
D2B1  29 80     AND #$80
D2B3  f0 07     BEQ $d2bc
D2B5  a5 c7     LDA $c7
D2B7  30 03     BMI $d2bc
D2B9  4c 60 d5  JMP $d560
D2BC  bd e0 00  LDA $00e0,X
D2BF  29 80     AND #$80
D2C1  f0 16     BEQ $d2d9
D2C3  a5 c7     LDA $c7
D2C5  30 12     BMI $d2d9
D2C7  ad bb 00  LDA $00bb
D2CA  10 0d     BPL $d2d9
D2CC  8e bb 00  STX $00bb
D2CF  20 16 d3  JSR $d316
D2D2  a9 ff     LDA #$ff
D2D4  8d bb 00  STA $00bb
D2D7  60        RTS
D2D8  b5 bd     LDA $bd,X
D2DA  e0 00     CPX #$00
D2DC  29 40     AND #$40
D2DE  f0 03     BEQ $d2e3
D2E0  20 e6 d2  JSR $d2e6
D2E3  60        RTS
D2E4  bc be a9  LDY $a9be,X
D2E7  ff        ???
D2E8  9d 84 03  STA $0384,X
D2EB  20 f6 d9  JSR $d9f6
D2EE  60        RTS
D2EF  a5 4d     LDA $4d
D2F1  37        ???
D2F2  04        ???
D2F3  4c 06 e9  JMP $e906
D2F6  20 a9 ea  JSR $eaa9
D2F9  49 ec     EOR #$ec
D2FB  4d 37 04  EOR $0437
D2FE  8d 37 04  STA $0437
D301  a9 e9     LDA #$e9
D303  4d 55 04  EOR $0455
D306  8d 55 04  STA $0455
D309  a9 18     LDA #$18
D30B  49 ed     EOR #$ed
D30D  48        PHA
D30E  a9 83     LDA #$83
D310  49 cb     EOR #$cb
D312  48        PHA
D313  60        RTS
D314  ad f6 8e  LDA $8ef6
D317  bb        ???
D318  00        BRK
D319  ae bb 00  LDX $00bb
D31C  bd 80 03  LDA $0380,X
D31F  bc 82 03  LDY $0382,X
D322  20 33 d8  JSR $d833
D325  20 88 d8  JSR $d888
D328  b0 76     BCS $d3a0
D32A  20 4f d5  JSR $d54f
D32D  ae bb 00  LDX $00bb
D330  bd 84 03  LDA $0384,X
D333  10 30     BPL $d365
D335  a6 b8     LDX $b8
D337  a5 c7     LDA $c7
D339  4a        LSR A
D33A  4a        LSR A
D33B  4a        LSR A
D33C  4a        LSR A
D33D  3d ee d0  AND $d0ee,X
D340  29 03     AND #$03
D342  d0 48     BNE $d38c
D344  ae bb 00  LDX $00bb
D347  b9 00 00  LDA $0000,Y
D34A  f0 15     BEQ $d361
D34C  29 30     AND #$30
D34E  25 c7     AND $c7
D350  f0 0f     BEQ $d361
D352  20 17 d5  JSR $d517
D355  98        TYA
D356  9d 84 03  STA $0384,X
D359  20 d3 d9  JSR $d9d3
D35C  a9 01     LDA #$01
D35E  20 83 e8  JSR $e883
D361  60        RTS
D362  48        PHA
D363  8a        TXA
D364  a2 84     LDX #$84
D366  c1 ae     CMP ($ae,X)
D368  bb        ???
D369  00        BRK
D36A  bd 84 03  LDA $0384,X
D36D  85 c0     STA $c0
D36F  c5 c1     CMP $c1
D371  f0 2a     BEQ $d39d
D373  20 49 80  JSR $8049
D376  08        PHP
D377  a4 c1     LDY $c1
D379  28        PLP
D37A  d0 b9     BNE $d335
D37C  ae bb 00  LDX $00bb
D37F  20 f6 d9  JSR $d9f6
D382  20 ae cc  JSR $ccae
D385  20 9e e4  JSR $e49e
D388  a4 c1     LDY $c1
D38A  b0 a9     BCS $d335
D38C  a5 c7     LDA $c7
D38E  09 80     ORA #$80
D390  85 c7     STA $c7
D392  a9 ff     LDA #$ff
D394  ae bb 00  LDX $00bb
D397  8d 84 03  STA $0384
D39A  8d 85 03  STA $0385
D39D  60        RTS
D39E  b9 00 a5  LDA $a500,Y
D3A1  c7        ???
D3A2  29 f3     AND #$f3
D3A4  85 c7     STA $c7
D3A6  c0 ed     CPY #$ed
D3A8  d0 10     BNE $d3ba
D3AA  a6 b8     LDX $b8
D3AC  bd 2e d1  LDA $d12e,X
D3AF  29 01     AND #$01
D3B1  d0 7f     BNE $d432
D3B3  20 01 d5  JSR $d501
D3B6  4c e8 cd  JMP $cde8
D3B9  6c c0 e1  JMP ($e1c0)
D3BC  d0 16     BNE $d3d4
D3BE  a6 b8     LDX $b8
D3C0  bd 2e d1  LDA $d12e,X
D3C3  29 02     AND #$02
D3C5  d0 6b     BNE $d432
D3C7  20 01 d5  JSR $d501
D3CA  20 50 e5  JSR $e550
D3CD  20 ae cc  JSR $ccae
D3D0  4c ee e4  JMP $e4ee
D3D3  c4 c0     CPY $c0
D3D5  ee d0 16  INC $16d0
D3D8  a6 b8     LDX $b8
D3DA  bd 2e d1  LDA $d12e,X
D3DD  29 04     AND #$04
D3DF  d0 51     BNE $d432
D3E1  a5 b4     LDA $b4
D3E3  49 03     EOR #$03
D3E5  85 b4     STA $b4
D3E7  20 01 d5  JSR $d501
D3EA  4c a9 e0  JMP $e0a9
D3ED  59 c0 e2  EOR $e2c0,Y
D3F0  d0 16     BNE $d408
D3F2  a6 b8     LDX $b8
D3F4  bd 2e d1  LDA $d12e,X
D3F7  29 08     AND #$08
D3F9  d0 37     BNE $d432
D3FB  a5 b4     LDA $b4
D3FD  49 01     EOR #$01
D3FF  85 b4     STA $b4
D401  20 01 d5  JSR $d501
D404  4c a9 e0  JMP $e0a9
D407  e0 c0     CPX #$c0
D409  ef        ???
D40A  d0 11     BNE $d41d
D40C  a6 b8     LDX $b8
D40E  bd 2e d1  LDA $d12e,X
D411  29 10     AND #$10
D413  d0 1d     BNE $d432
D415  20 01 d5  JSR $d501
D418  4c 5c ce  JMP $ce5c
D41B  18        CLC
D41C  6d c0 e3  ADC $e3c0
D41F  d0 1a     BNE $d43b
D421  a6 b8     LDX $b8
D423  bd 2e d1  LDA $d12e,X
D426  29 20     AND #$20
D428  d0 08     BNE $d432
D42A  20 01 d5  JSR $d501
D42D  4c 26 cd  JMP $cd26
D430  08        PHP
D431  46 a9     LSR $a9
D433  06 4c     ASL $4c
D435  83        ???
D436  e8        INX
D437  ad 01 40  LDA $4001
D43A  4c c0 f0  JMP $f0c0
D43D  d0 13     BNE $d452
D43F  a6 b8     LDX $b8
D441  bd 2e d1  LDA $d12e,X
D444  29 40     AND #$40
D446  d0 ea     BNE $d432
D448  a5 b8     LDA $b8
D44A  c9 08     CMP #$08
D44C  b0 04     BCS $d452
D44E  4c b0 d4  JMP $d4b0
D451  ee c0 e4  INC $e4c0
D454  d0 0f     BNE $d465
D456  a6 b8     LDX $b8
D458  bd 2e d1  LDA $d12e,X
D45B  29 80     AND #$80
D45D  d0 d3     BNE $d432
D45F  a5 c7     LDA $c7
D461  09 40     ORA #$40
D463  85 c7     STA $c7
D465  c0 e5     CPY #$e5
D467  d0 02     BNE $d46b
D469  60        RTS
D46A  20 ad de  JSR $dead
D46D  00        BRK
D46E  29 60     AND #$60
D470  c9 60     CMP #$60
D472  d0 28     BNE $d49c
D474  c0 26     CPY #$26
D476  f0 26     BEQ $d49e
D478  c0 43     CPY #$43
D47A  f0 22     BEQ $d49e
D47C  c0 2b     CPY #$2b
D47E  f0 1e     BEQ $d49e
D480  c0 3e     CPY #$3e
D482  f0 1a     BEQ $d49e
D484  c0 32     CPY #$32
D486  f0 28     BEQ $d4b0
D488  c0 37     CPY #$37
D48A  f0 24     BEQ $d4b0
D48C  c0 dc     CPY #$dc
D48E  d0 0c     BNE $d49c
D490  20 71 da  JSR $da71
D493  ad 27 04  LDA $0427
D496  ae 4e 04  LDX $044e
D499  20 a7 fa  JSR $faa7
D49C  60        RTS
D49D  46 a5     LSR $a5
D49F  b8        CLV
D4A0  18        CLC
D4A1  69 08     ADC #$08
D4A3  c9 20     CMP #$20
D4A5  90 03     BCC $d4aa
D4A7  38        SEC
D4A8  e9 20     SBC #$20
D4AA  85 b8     STA $b8
D4AC  4c c2 d4  JMP $d4c2
D4AF  be a5 b8  LDX $b8a5,Y
D4B2  29 f8     AND #$f8
D4B4  48        PHA
D4B5  e6 b8     INC $b8
D4B7  a5 b8     LDA $b8
D4B9  29 07     AND #$07
D4BB  85 b8     STA $b8
D4BD  68        PLA
D4BE  05 b8     ORA $b8
D4C0  85 b8     STA $b8
D4C2  a6 b8     LDX $b8
D4C4  a5 b4     LDA $b4
D4C6  29 f0     AND #$f0
D4C8  1d ce d0  ORA $d0ce,X
D4CB  85 b4     STA $b4
D4CD  a5 b8     LDA $b8
D4CF  4a        LSR A
D4D0  4a        LSR A
D4D1  4a        LSR A
D4D2  20 25 db  JSR $db25
D4D5  20 a9 e0  JSR $e0a9
D4D8  20 c0 ba  JSR $bac0
D4DB  20 1d be  JSR $be1d
D4DE  a9 ff     LDA #$ff
D4E0  8d 84 03  STA $0384
D4E3  8d 85 03  STA $0385
D4E6  20 01 d5  JSR $d501
D4E9  a6 b8     LDX $b8
D4EB  a5 c7     LDA $c7
D4ED  29 30     AND #$30
D4EF  85 c7     STA $c7
D4F1  bd ee d0  LDA $d0ee,X
D4F4  29 4f     AND #$4f
D4F6  05 c7     ORA $c7
D4F8  85 c7     STA $c7
D4FA  a9 ff     LDA #$ff
D4FC  20 d2 ff  JSR $ffd2
D4FF  60        RTS
D500  a2 a2     LDX #$a2
D502  00        BRK
D503  a9 ff     LDA #$ff
D505  9d 84 03  STA $0384,X
D508  20 f6 d9  JSR $d9f6
D50B  a2 01     LDX #$01
D50D  a9 ff     LDA #$ff
D50F  9d 84 03  STA $0384,X
D512  20 f6 d9  JSR $d9f6
D515  60        RTS
D516  c6 ad     DEC $ad
D518  88        DEY
D519  03        ???
D51A  d0 31     BNE $d54d
D51C  a5 b9     LDA $b9
D51E  d0 2d     BNE $d54d
D520  ae bb 00  LDX $00bb
D523  bd 80 03  LDA $0380,X
D526  bc 82 03  LDY $0382,X
D529  20 33 d8  JSR $d833
D52C  20 88 d8  JSR $d888
D52F  b0 1c     BCS $d54d
D531  c0 3a     CPY #$3a
D533  90 18     BCC $d54d
D535  a5 b4     LDA $b4
D537  49 01     EOR #$01
D539  85 b4     STA $b4
D53B  20 a9 e0  JSR $e0a9
D53E  ae bb 00  LDX $00bb
D541  bd 80 03  LDA $0380,X
D544  bc 82 03  LDY $0382,X
D547  20 33 d8  JSR $d833
D54A  20 88 d8  JSR $d888
D54D  60        RTS
D54E  ad a5 c7  LDA $c7a5
D551  29 0c     AND #$0c
D553  f0 08     BEQ $d55d
D555  a5 c7     LDA $c7
D557  09 40     ORA #$40
D559  85 c7     STA $c7
D55B  68        PLA
D55C  68        PLA
D55D  60        RTS
D55E  ad 4c a5  LDA $a54c
D561  b4 49     LDY $49,X
D563  10 85     BPL $d4ea
D565  b4 29     LDY $29,X
D567  10 4a     BPL $d5b3
D569  4a        LSR A
D56A  4a        LSR A
D56B  4a        LSR A
D56C  aa        TAX
D56D  4c 2c ff  JMP $ff2c
D570  63        ???
D571  a5 ad     LDA $ad
D573  e0 00     CPX #$00
D575  29 20     AND #$20
D577  f0 0b     BEQ $d584
D579  ad de 00  LDA $00de
D57C  29 10     AND #$10
D57E  f0 04     BEQ $d584
D580  6c fc ff  JMP ($fffc)
D583  b9 a5 ba  LDA $baa5,Y
D586  29 0f     AND #$0f
D588  a8        TAY
D589  b9 9a d5  LDA $d59a,Y
D58C  48        PHA
D58D  b9 92 d5  LDA $d592,Y
D590  48        PHA
D591  60        RTS
D592  62        ???
D593  c8        INY
D594  32        ???
D595  ec 39 29  CPX $2939
D598  25 89     AND $89
D59A  d6 d6     DEC $d6,X
D59C  d2        ???
D59D  d7        ???
D59E  da        ???
D59F  d8        CLD
D5A0  d6 a9     DEC $a9,X
D5A2  06 85     ASL $85
D5A4  ba        TSX
D5A5  a2 03     LDX #$03
D5A7  20 2c ff  JSR $ff2c
D5AA  ea        NOP
D5AB  ea        NOP
D5AC  ea        NOP
D5AD  20 d8 cc  JSR $ccd8
D5B0  a9 00     LDA #$00
D5B2  8d bd 00  STA $00bd
D5B5  ad e0 00  LDA $00e0
D5B8  29 00     AND #$00
D5BA  f0 07     BEQ $d5c3
D5BC  ad bd 00  LDA $00bd
D5BF  c9 08     CMP #$08
D5C1  90 f2     BCC $d5b5
D5C3  a9 00     LDA #$00
D5C5  8d e0 00  STA $00e0
D5C8  60        RTS
D5C9  20 60 a2  JSR $a260
D5CC  03        ???
D5CD  8a        TXA
D5CE  18        CLC
D5CF  69 03     ADC #$03
D5D1  a0 00     LDY #$00
D5D3  8d d2 00  STA $00d2
D5D6  18        CLC
D5D7  69 1a     ADC #$1a
D5D9  8d d3 00  STA $00d3
D5DC  20 2c ff  JSR $ff2c
D5DF  a9 00     LDA #$00
D5E1  8d 06 20  STA $2006
D5E4  8d 06 20  STA $2006
D5E7  ee d2 00  INC $00d2
D5EA  ad 07 20  LDA $2007
D5ED  8a        TXA
D5EE  48        PHA
D5EF  a2 10     LDX #$10
D5F1  8a        TXA
D5F2  48        PHA
D5F3  a2 00     LDX #$00
D5F5  ad 07 20  LDA $2007
D5F8  49 6a     EOR #$6a
D5FA  18        CLC
D5FB  6d 3f 04  ADC $043f
D5FE  8d 3f 04  STA $043f
D601  ad 07 20  LDA $2007
D604  18        CLC
D605  69 63     ADC #$63
D607  4d 57 04  EOR $0457
D60A  8d 57 04  STA $0457
D60D  8a        TXA
D60E  4d 57 04  EOR $0457
D611  8d 57 04  STA $0457
D614  ca        DEX
D615  d0 de     BNE $d5f5
D617  68        PLA
D618  aa        TAX
D619  ca        DEX
D61A  d0 d5     BNE $d5f1
D61C  68        PLA
D61D  aa        TAX
D61E  ca        DEX
D61F  10 bb     BPL $d5dc
D621  4c e7 d8  JMP $d8e7
D624  60        RTS
D625  8d 60 20  STA $2060
D628  00        BRK
D629  a9 04     LDA #$04
D62B  85 ba     STA $ba
D62D  a2 03     LDX #$03
D62F  20 2c ff  JSR $ff2c
D632  ea        NOP
D633  ea        NOP
D634  ea        NOP
D635  a9 00     LDA #$00
D637  8d bd 00  STA $00bd
D63A  ad e0 00  LDA $00e0
D63D  29 80     AND #$80
D63F  d0 1b     BNE $d65c
D641  ad bd 00  LDA $00bd
D644  c9 08     CMP #$08
D646  90 f2     BCC $d63a
D648  a9 00     LDA #$00
D64A  85 ba     STA $ba
D64C  a9 00     LDA #$00
D64E  8d bd 00  STA $00bd
D651  a9 08     LDA #$08
D653  85 b8     STA $b8
D655  20 5d d1  JSR $d15d
D658  4c 29 d6  JMP $d629
D65B  ac a9 00  LDY $00a9
D65E  8d e0 00  STA $00e0
D661  60        RTS
D662  91 ad     STA ($ad),Y
D664  de 00 d0  DEC $d000,X
D667  0f        ???
D668  a5 c7     LDA $c7
D66A  09 80     ORA #$80
D66C  85 c7     STA $c7
D66E  ad bd 00  LDA $00bd
D671  c9 0a     CMP #$0a
D673  a5 b6     LDA $b6
D675  30 06     BMI $d67d
D677  a5 c7     LDA $c7
D679  09 40     ORA #$40
D67B  85 c7     STA $c7
D67D  a2 00     LDX #$00
D67F  a9 30     LDA #$30
D681  20 ce f1  JSR $f1ce
D684  60        RTS
D685  8d a9 01  STA $01a9
D688  85 ba     STA $ba
D68A  a2 00     LDX #$00
D68C  20 2c ff  JSR $ff2c
D68F  ad e2 00  LDA $00e2
D692  49 10     EOR #$10
D694  8d 00 20  STA $2000
D697  20 6f be  JSR $be6f
D69A  20 06 c8  JSR $c806
D69D  20 44 d7  JSR $d744
D6A0  a9 00     LDA #$00
D6A2  8d e0 00  STA $00e0
D6A5  ad e0 00  LDA $00e0
D6A8  29 80     AND #$80
D6AA  f0 f9     BEQ $d6a5
D6AC  ad 82 03  LDA $0382
D6AF  4a        LSR A
D6B0  4a        LSR A
D6B1  4a        LSR A
D6B2  4a        LSR A
D6B3  aa        TAX
D6B4  bd c4 d6  LDA $d6c4,X
D6B7  85 b8     STA $b8
D6B9  ad e2 00  LDA $00e2
D6BC  8d 00 20  STA $2000
D6BF  20 ee c7  JSR $c7ee
D6C2  60        RTS
D6C3  98        TYA
D6C4  00        BRK
D6C5  08        PHP
D6C6  10 18     BPL $d6e0
D6C8  00        BRK
D6C9  ad e2 00  LDA $00e2
D6CC  49 10     EOR #$10
D6CE  8d 00 20  STA $2000
D6D1  a2 01     LDX #$01
D6D3  20 d8 d6  JSR $d6d8
D6D6  a2 00     LDX #$00
D6D8  bd de 00  LDA $00de,X
D6DB  29 08     AND #$08
D6DD  f0 10     BEQ $d6ef
D6DF  bd 82 03  LDA $0382,X
D6E2  c9 10     CMP #$10
D6E4  f0 09     BEQ $d6ef
D6E6  de 82 03  DEC $0382,X
D6E9  de 82 03  DEC $0382,X
D6EC  20 8c d7  JSR $d78c
D6EF  bd de 00  LDA $00de,X
D6F2  29 04     AND #$04
D6F4  f0 10     BEQ $d706
D6F6  bd 82 03  LDA $0382,X
D6F9  c9 40     CMP #$40
D6FB  f0 09     BEQ $d706
D6FD  fe 82 03  INC $0382,X
D700  fe 82 03  INC $0382,X
D703  20 8c d7  JSR $d78c
D706  bd de 00  LDA $00de,X
D709  29 02     AND #$02
D70B  f0 09     BEQ $d716
D70D  de 80 03  DEC $0380,X
D710  de 80 03  DEC $0380,X
D713  20 8c d7  JSR $d78c
D716  bd de 00  LDA $00de,X
D719  29 01     AND #$01
D71B  f0 09     BEQ $d726
D71D  fe 80 03  INC $0380,X
D720  fe 80 03  INC $0380,X
D723  20 8c d7  JSR $d78c
D726  bd e0 00  LDA $00e0,X
D729  29 10     AND #$10
D72B  f0 00     BEQ $d72d
D72D  bd e0 00  LDA $00e0,X
D730  29 20     AND #$20
D732  f0 00     BEQ $d734
D734  bd e0 00  LDA $00e0,X
D737  29 80     AND #$80
D739  f0 00     BEQ $d73b
D73B  bd e0 00  LDA $00e0,X
D73E  29 40     AND #$40
D740  f0 00     BEQ $d742
D742  60        RTS
D743  b5 a2     LDA $a2,X
D745  10 a9     BPL $d6f0
D747  c1 a0     CMP ($a0,X)
D749  03        ???
D74A  20 a0 f1  JSR $f1a0
D74D  a2 18     LDX #$18
D74F  a9 c1     LDA #$c1
D751  a0 03     LDY #$03
D753  a2 00     LDX #$00
D755  a9 40     LDA #$40
D757  a0 10     LDY #$10
D759  9d 80 03  STA $0380,X
D75C  98        TYA
D75D  9d 82 03  STA $0382,X
D760  20 8c d7  JSR $d78c
D763  a2 01     LDX #$01
D765  a9 40     LDA #$40
D767  a0 10     LDY #$10
D769  9d 80 03  STA $0380,X
D76C  98        TYA
D76D  9d 82 03  STA $0382,X
D770  60        RTS
D771  c5 48     CMP $48
D773  8a        TXA
D774  48        PHA
D775  98        TYA
D776  48        PHA
D777  ba        TSX
D778  bd 01 01  LDA $0101,X
D77B  9d 02 01  STA $0102,X
D77E  68        PLA
D77F  60        RTS
D780  87        ???
D781  a5 48     LDA $48
D783  8a        TXA
D784  48        PHA
D785  98        TYA
D786  48        PHA
D787  4c a7 d7  JMP $d7a7
D78A  dd 35 48  CMP $4835,X
D78D  8a        TXA
D78E  48        PHA
D78F  98        TYA
D790  48        PHA
D791  bd 82 03  LDA $0382,X
D794  29 f0     AND #$f0
D796  0a        ASL A
D797  18        CLC
D798  7d 82 03  ADC $0382,X
D79B  29 f0     AND #$f0
D79D  18        CLC
D79E  69 10     ADC #$10
D7A0  a8        TAY
D7A1  bd 80 03  LDA $0380,X
D7A4  a9 40     LDA #$40
D7A6  2c a0 f0  BIT $f0a0
D7A9  48        PHA
D7AA  bd b8 d7  LDA $d7b8,X
D7AD  aa        TAX
D7AE  68        PLA
D7AF  20 bb f1  JSR $f1bb
D7B2  68        PLA
D7B3  a8        TAY
D7B4  68        PLA
D7B5  aa        TAX
D7B6  68        PLA
D7B7  60        RTS
D7B8  10 18     BPL $d7d2
D7BA  d1 a9     CMP ($a9),Y
D7BC  03        ???
D7BD  85 ba     STA $ba
D7BF  ad e2 00  LDA $00e2
D7C2  49 10     EOR #$10
D7C4  8d 00 20  STA $2000
D7C7  a9 20     LDA #$20
D7C9  8d 8f 00  STA $008f
D7CC  a9 00     LDA #$00
D7CE  8d 62 03  STA $0362
D7D1  20 a6 be  JSR $bea6
D7D4  a9 00     LDA #$00
D7D6  8d bd 00  STA $00bd
D7D9  a9 0f     LDA #$0f
D7DB  8d bc 00  STA $00bc
D7DE  ad bd 00  LDA $00bd
D7E1  c9 03     CMP #$03
D7E3  90 f9     BCC $d7de
D7E5  ad e2 00  LDA $00e2
D7E8  8d 00 20  STA $2000
D7EB  60        RTS
D7EC  e6 ad     INC $ad
D7EE  e2        ???
D7EF  00        BRK
D7F0  49 10     EOR #$10
D7F2  8d 00 20  STA $2000
D7F5  60        RTS
D7F6  2d a9 05  AND $05a9
D7F9  85 ba     STA $ba
D7FB  ad e2 00  LDA $00e2
D7FE  49 10     EOR #$10
D800  8d 00 20  STA $2000
D803  a9 30     LDA #$30
D805  8d 8f 00  STA $008f
D808  a9 00     LDA #$00
D80A  8d 62 03  STA $0362
D80D  20 30 bf  JSR $bf30
D810  a9 00     LDA #$00
D812  8d bd 00  STA $00bd
D815  a9 0f     LDA #$0f
D817  8d bc 00  STA $00bc
D81A  ad bd 00  LDA $00bd
D81D  c9 03     CMP #$03
D81F  90 f9     BCC $d81a
D821  ad e2 00  LDA $00e2
D824  8d 00 20  STA $2000
D827  60        RTS
D828  18        CLC
D829  6d ad e2  ADC $e2ad
D82C  00        BRK
D82D  49 10     EOR #$10
D82F  8d 00 20  STA $2000
D832  60        RTS
D833  48        PHA
D834  8a        TXA
D835  48        PHA
D836  98        TYA
D837  48        PHA
D838  ba        TSX
D839  bd 03 01  LDA $0103,X
D83C  38        SEC
D83D  e9 30     SBC #$30
D83F  18        CLC
D840  6d e4 00  ADC $00e4
D843  4a        LSR A
D844  4a        LSR A
D845  4a        LSR A
D846  4a        LSR A
D847  9d 03 01  STA $0103,X
D84A  bd 01 01  LDA $0101,X
D84D  38        SEC
D84E  e9 30     SBC #$30
D850  18        CLC
D851  6d e5 00  ADC $00e5
D854  4a        LSR A
D855  4a        LSR A
D856  4a        LSR A
D857  4a        LSR A
D858  9d 01 01  STA $0101,X
D85B  68        PLA
D85C  a8        TAY
D85D  68        PLA
D85E  aa        TAX
D85F  68        PLA
D860  60        RTS
D861  cc 48 8a  CPY $8a48
D864  48        PHA
D865  a0 1f     LDY #$1f
D867  a2 00     LDX #$00
D869  b9 88 e0  LDA $e088,Y
D86C  49 6f     EOR #$6f
D86E  49 b4     EOR #$b4
D870  20 37 e5  JSR $e537
D873  e8        INX
D874  88        DEY
D875  d0 f2     BNE $d869
D877  68        PLA
D878  aa        TAX
D879  68        PLA
D87A  a8        TAY
D87B  a9 6b     LDA #$6b
D87D  49 6c     EOR #$6c
D87F  48        PHA
D880  a9 a9     LDA #$a9
D882  49 d6     EOR #$d6
D884  48        PHA
D885  98        TYA
D886  60        RTS
D887  94 48     STY $48,X
D889  8a        TXA
D88A  48        PHA
D88B  98        TYA
D88C  48        PHA
D88D  ba        TSX
D88E  bd 03 01  LDA $0103,X
D891  49 ff     EOR #$ff
D893  18        CLC
D894  69 09     ADC #$09
D896  0a        ASL A
D897  0a        ASL A
D898  9d 01 01  STA $0101,X
D89B  0a        ASL A
D89C  18        CLC
D89D  7d 01 01  ADC $0101,X
D8A0  9d 01 01  STA $0101,X
D8A3  98        TYA
D8A4  48        PHA
D8A5  18        CLC
D8A6  7d 01 01  ADC $0101,X
D8A9  a8        TAY
D8AA  20 ae e3  JSR $e3ae
D8AD  98        TYA
D8AE  9d 01 01  STA $0101,X
D8B1  68        PLA
D8B2  a8        TAY
D8B3  bd 03 01  LDA $0103,X
D8B6  c9 09     CMP #$09
D8B8  b0 02     BCS $d8bc
D8BA  c0 0a     CPY #$0a
D8BC  68        PLA
D8BD  a8        TAY
D8BE  68        PLA
D8BF  aa        TAX
D8C0  68        PLA
D8C1  60        RTS
D8C2  38        SEC
D8C3  e9 48     SBC #$48
D8C5  8a        TXA
D8C6  48        PHA
D8C7  98        TYA
D8C8  48        PHA
D8C9  ba        TSX
D8CA  20 ae e3  JSR $e3ae
D8CD  a9 0c     LDA #$0c
D8CF  20 ab ff  JSR $ffab
D8D2  9d 01 01  STA $0101,X
D8D5  98        TYA
D8D6  49 ff     EOR #$ff
D8D8  18        CLC
D8D9  69 09     ADC #$09
D8DB  9d 03 01  STA $0103,X
D8DE  68        PLA
D8DF  a8        TAY
D8E0  68        PLA
D8E1  aa        TAX
D8E2  68        PLA
D8E3  60        RTS
D8E4  a9 01     LDA #$01
D8E6  e6 a9     INC $a9
D8E8  46 49     LSR $49
D8EA  63        ???
D8EB  a8        TAY
D8EC  a9 86     LDA #$86
D8EE  49 53     EOR #$53
D8F0  aa        TAX
D8F1  a9 b8     LDA #$b8
D8F3  49 4b     EOR #$4b
D8F5  4c 72 d7  JMP $d772
D8F8  89        ???
D8F9  48        PHA
D8FA  8a        TXA
D8FB  48        PHA
D8FC  98        TYA
D8FD  48        PHA
D8FE  ba        TSX
D8FF  bd 03 01  LDA $0103,X
D902  0a        ASL A
D903  0a        ASL A
D904  0a        ASL A
D905  0a        ASL A
D906  38        SEC
D907  ed e4 00  SBC $00e4
D90A  18        CLC
D90B  69 30     ADC #$30
D90D  9d 03 01  STA $0103,X
D910  bd 01 01  LDA $0101,X
D913  0a        ASL A
D914  0a        ASL A
D915  0a        ASL A
D916  0a        ASL A
D917  38        SEC
D918  ed e5 00  SBC $00e5
D91B  18        CLC
D91C  69 2f     ADC #$2f
D91E  9d 01 01  STA $0101,X
D921  68        PLA
D922  a8        TAY
D923  68        PLA
D924  aa        TAX
D925  68        PLA
D926  60        RTS
D927  19 a2 10  ORA $10a2,Y
D92A  a9 c1     LDA #$c1
D92C  a0 03     LDY #$03
D92E  20 a0 f1  JSR $f1a0
D931  a2 18     LDX #$18
D933  a9 c1     LDA #$c1
D935  a0 03     LDY #$03
D937  20 a0 f1  JSR $f1a0
D93A  a2 00     LDX #$00
D93C  a9 d0     LDA #$d0
D93E  a0 c0     LDY #$c0
D940  9d 80 03  STA $0380,X
D943  98        TYA
D944  9d 82 03  STA $0382,X
D947  20 a8 d9  JSR $d9a8
D94A  a2 01     LDX #$01
D94C  a9 e0     LDA #$e0
D94E  a0 c0     LDY #$c0
D950  9d 80 03  STA $0380,X
D953  98        TYA
D954  9d 82 03  STA $0382,X
D957  4c a8 d9  JMP $d9a8
D95A  ae b9 be  LDX $beb9
D95D  ed 49 bd  SBC $bd49
D960  91 d0     STA ($d0),Y
D962  88        DEY
D963  d0 f6     BNE $d95b
D965  ee d0 00  INC $00d0
D968  ea        NOP
D969  ea        NOP
D96A  ea        NOP
D96B  a9 03     LDA #$03
D96D  8d 3e 04  STA $043e
D970  a9 2c     LDA #$2c
D972  a0 13     LDY #$13
D974  91 d0     STA ($d0),Y
D976  ea        NOP
D977  ea        NOP
D978  ea        NOP
D979  a9 02     LDA #$02
D97B  8d 56 04  STA $0456
D97E  a9 74     LDA #$74
D980  49 14     EOR #$14
D982  8d 63 07  STA $0763
D985  a9 87     LDA #$87
D987  49 1a     EOR #$1a
D989  8d 60 07  STA $0760
D98C  a9 63     LDA #$63
D98E  4d 3e 04  EOR $043e
D991  8d 2f 04  STA $042f
D994  a9 95     LDA #$95
D996  4d 56 04  EOR $0456
D999  8d 4f 04  STA $044f
D99C  60        RTS
D99D  20 48 8a  JSR $8a48
D9A0  48        PHA
D9A1  98        TYA
D9A2  48        PHA
D9A3  4c bf d9  JMP $d9bf
D9A6  08        PHP
D9A7  bd 48 8a  LDA $8a48,X
D9AA  48        PHA
D9AB  98        TYA
D9AC  48        PHA
D9AD  bd 82 03  LDA $0382,X
D9B0  29 f0     AND #$f0
D9B2  18        CLC
D9B3  69 08     ADC #$08
D9B5  a8        TAY
D9B6  bd 80 03  LDA $0380,X
D9B9  29 f0     AND #$f0
D9BB  18        CLC
D9BC  69 08     ADC #$08
D9BE  2c a0 f0  BIT $f0a0
D9C1  48        PHA
D9C2  bd d0 d9  LDA $d9d0,X
D9C5  aa        TAX
D9C6  68        PLA
D9C7  20 bb f1  JSR $f1bb
D9CA  68        PLA
D9CB  a8        TAY
D9CC  68        PLA
D9CD  aa        TAX
D9CE  68        PLA
D9CF  60        RTS
D9D0  10 18     BPL $d9ea
D9D2  4c 8a 48  JMP $488a
D9D5  98        TYA
D9D6  48        PHA
D9D7  b9 00 00  LDA $0000,Y
D9DA  a8        TAY
D9DB  b9 4d e2  LDA $e24d,Y
D9DE  a8        TAY
D9DF  bd 02 da  LDA $da02,X
D9E2  aa        TAX
D9E3  b9 29 da  LDA $da29,Y
D9E6  a0 01     LDY #$01
D9E8  20 05 da  JSR $da05
D9EB  68        PLA
D9EC  a8        TAY
D9ED  68        PLA
D9EE  aa        TAX
D9EF  20 c4 d8  JSR $d8c4
D9F2  20 f9 d8  JSR $d8f9
D9F5  2c a0 f0  BIT $f0a0
D9F8  48        PHA
D9F9  bd 02 da  LDA $da02,X
D9FC  aa        TAX
D9FD  68        PLA
D9FE  20 18 da  JSR $da18
DA01  60        RTS
DA02  30 30     BMI $da34
DA04  b4 18     LDY $18,X
DA06  9d 01 02  STA $0201,X
DA09  69 02     ADC #$02
DA0B  9d 05 02  STA $0205,X
DA0E  98        TYA
DA0F  9d 02 02  STA $0202,X
DA12  9d 06 02  STA $0206,X
DA15  60        RTS
DA16  be 54 18  LDX $1854,Y
DA19  9d 03 02  STA $0203,X
DA1C  69 08     ADC #$08
DA1E  9d 07 02  STA $0207,X
DA21  98        TYA
DA22  9d 00 02  STA $0200,X
DA25  9d 04 02  STA $0204,X
DA28  60        RTS
DA29  81 85     STA ($85,X)
DA2B  89        ???
DA2C  8d 91 95  STA $9591
DA2F  99 9d a1  STA $a19d,Y
DA32  a5 a9     LDA $a9
DA34  ad b1 b5  LDA $b5b1
DA37  b9 bd 01  LDA $01bd,Y
DA3A  a2 10     LDX #$10
DA3C  ca        DEX
DA3D  d0 fd     BNE $da3c
DA3F  60        RTS
DA40  03        ???
DA41  20 2c ff  JSR $ff2c
DA44  ad e2 00  LDA $00e2
DA47  49 18     EOR #$18
DA49  8d 00 20  STA $2000
DA4C  a9 6a     LDA #$6a
DA4E  20 d2 ff  JSR $ffd2
DA51  a2 02     LDX #$02
DA53  20 2c ff  JSR $ff2c
DA56  ad e2 00  LDA $00e2
DA59  49 18     EOR #$18
DA5B  8d 00 20  STA $2000
DA5E  a9 40     LDA #$40
DA60  20 d2 ff  JSR $ffd2
DA63  a2 02     LDX #$02
DA65  20 2c ff  JSR $ff2c
DA68  ad e2 00  LDA $00e2
DA6B  8d 00 20  STA $2000
DA6E  60        RTS
DA6F  29 a9     AND #$a9
DA71  a2 00     LDX #$00
DA73  a0 26     LDY #$26
DA75  bd de da  LDA $dade,X
DA78  49 e7     EOR #$e7
DA7A  99 ff 06  STA $06ff,Y
DA7D  e8        INX
DA7E  88        DEY
DA7F  d0 f4     BNE $da75
DA81  a0 08     LDY #$08
DA83  a9 fa     LDA #$fa
DA85  99 ff 06  STA $06ff,Y
DA88  a9 00     LDA #$00
DA8A  99 fe 06  STA $06fe,Y
DA8D  a0 11     LDY #$11
DA8F  a9 f7     LDA #$f7
DA91  99 ff 06  STA $06ff,Y
DA94  a9 89     LDA #$89
DA96  99 fe 06  STA $06fe,Y
DA99  a0 14     LDY #$14
DA9B  a9 f6     LDA #$f6
DA9D  99 ff 06  STA $06ff,Y
DAA0  a9 ad     LDA #$ad
DAA2  99 fe 06  STA $06fe,Y
DAA5  a0 26     LDY #$26
DAA7  a9 fa     LDA #$fa
DAA9  99 ff 06  STA $06ff,Y
DAAC  a9 31     LDA #$31
DAAE  99 fe 06  STA $06fe,Y
DAB1  ad 4f 04  LDA $044f
DAB4  4d 54 04  EOR $0454
DAB7  ea        NOP
DAB8  a9 c6     LDA #$c6
DABA  8d 4e 04  STA $044e
DABD  4d e1 ff  EOR $ffe1
DAC0  a8        TAY
DAC1  ad 2f 04  LDA $042f
DAC4  4d 36 04  EOR $0436
DAC7  ea        NOP
DAC8  a9 07     LDA #$07
DACA  8d 27 04  STA $0427
DACD  4d dd ff  EOR $ffdd
DAD0  d0 07     BNE $dad9
DAD2  98        TYA
DAD3  d0 04     BNE $dad9
DAD5  18        CLC
DAD6  60        RTS
DAD7  20 60 20  JSR $2060
DADA  dd da 18  CMP $18da,X
DADD  60        RTS
DADE  00        BRK
DADF  00        BRK
DAE0  ab        ???
DAE1  89        ???
DAE2  88        DEY
DAE3  8e 94 95  STX $9594
DAE6  82        ???
DAE7  b1 c7     LDA ($c7),Y
DAE9  9e        ???
DAEA  84 86     STY $86
DAEC  95 8e     STA $8e,X
DAEE  b7        ???
DAEF  e9 00     SBC #$00
DAF1  00        BRK
DAF2  c7        ???
DAF3  00        BRK
DAF4  00        BRK
DAF5  c7        ???
DAF6  f7        ???
DAF7  47        ???
DAF8  ef        ???
DAF9  45 c7     EOR $c7
DAFB  4e 00 00  LSR $0000
DAFE  c7        ???
DAFF  87        ???
DB00  e6 f7     INC $f7
DB02  3b        ???
DB03  42        ???
DB04  20 98 ad  JSR $ad98
DB07  02        ???
DB08  20 a0 00  JSR $00a0
DB0B  a9 3f     LDA #$3f
DB0D  8d 06 20  STA $2006
DB10  8c 06 20  STY $2006
DB13  b9 60 ba  LDA $ba60,Y
DB16  8d 07 20  STA $2007
DB19  c8        INY
DB1A  c0 20     CPY #$20
DB1C  d0 f5     BNE $db13
DB1E  60        RTS
DB1F  a6 a9     LDX $a9
DB21  00        BRK
DB22  a0 f0     LDY #$f0
DB24  2c a0 3a  BIT $3aa0
DB27  0a        ASL A
DB28  aa        TAX
DB29  bd 3d db  LDA $db3d,X
DB2C  8d d8 00  STA $00d8
DB2F  bd 3e db  LDA $db3e,X
DB32  8d d9 00  STA $00d9
DB35  a9 c0     LDA #$c0
DB37  a2 cc     LDX #$cc
DB39  20 1d f6  JSR $f61d
DB3C  60        RTS
DB3D  4d db 5c  EOR $5cdb
DB40  db        ???
DB41  6b        ???
DB42  db        ???
DB43  7a        ???
DB44  db        ???
DB45  89        ???
DB46  db        ???
DB47  7a        ???
DB48  db        ???
DB49  98        TYA
DB4A  db        ???
DB4B  4d db 04  EOR $04db
DB4E  03        ???
DB4F  02        ???
DB50  b8        CLV
DB51  ba        TSX
DB52  bc be d8  LDY $d8be,X
DB55  da        ???
DB56  dc        ???
DB57  de f8 fa  DEC $faf8,X
DB5A  fc        ???
DB5B  fe 04 03  INC $0304,X
DB5E  02        ???
DB5F  a0 a2     LDY #$a2
DB61  a4 a6     LDY $a6
DB63  c0 c2     CPY #$c2
DB65  c4 c6     CPY $c6
DB67  e0 e2     CPX #$e2
DB69  e4 e6     CPX $e6
DB6B  04        ???
DB6C  03        ???
DB6D  02        ???
DB6E  a8        TAY
DB6F  aa        TAX
DB70  ac ae c8  LDY $c8ae
DB73  ca        DEX
DB74  cc ce e8  CPY $e8ce
DB77  ea        NOP
DB78  ec ee 04  CPX $04ee
DB7B  03        ???
DB7C  02        ???
DB7D  b0 b2     BCS $db31
DB7F  b4 b6     LDY $b6,X
DB81  d0 d2     BNE $db55
DB83  d4        ???
DB84  d6 f0     DEC $f0,X
DB86  f2        ???
DB87  f4        ???
DB88  f6 04     INC $04,X
DB8A  03        ???
DB8B  02        ???
DB8C  b8        CLV
DB8D  ba        TSX
DB8E  bc be d8  LDY $d8be,X
DB91  da        ???
DB92  dc        ???
DB93  de f8 fa  DEC $faf8,X
DB96  fc        ???
DB97  fe 04 03  INC $0304,X
DB9A  02        ???
DB9B  b8        CLV
DB9C  ba        TSX
DB9D  bc be d8  LDY $d8be,X
DBA0  da        ???
DBA1  dc        ???
DBA2  de f8 fa  DEC $faf8,X
DBA5  fc        ???
DBA6  fe 4c a0  INC $a04c,X
DBA9  f0 2c     BEQ $dbd7
DBAB  a0 77     LDY #$77
DBAD  a9 00     LDA #$00
DBAF  20 be db  JSR $dbbe
DBB2  a9 01     LDA #$01
DBB4  20 be db  JSR $dbbe
DBB7  a9 02     LDA #$02
DBB9  20 be db  JSR $dbbe
DBBC  a9 03     LDA #$03
DBBE  48        PHA
DBBF  8a        TXA
DBC0  48        PHA
DBC1  98        TYA
DBC2  48        PHA
DBC3  ba        TSX
DBC4  bd 03 01  LDA $0103,X
DBC7  0a        ASL A
DBC8  aa        TAX
DBC9  bd e7 db  LDA $dbe7,X
DBCC  8d d8 00  STA $00d8
DBCF  bd e8 db  LDA $dbe8,X
DBD2  8d d9 00  STA $00d9
DBD5  bd ef db  LDA $dbef,X
DBD8  48        PHA
DBD9  bd f0 db  LDA $dbf0,X
DBDC  aa        TAX
DBDD  68        PLA
DBDE  20 1d f6  JSR $f61d
DBE1  68        PLA
DBE2  a8        TAY
DBE3  68        PLA
DBE4  aa        TAX
DBE5  68        PLA
DBE6  60        RTS
DBE7  f7        ???
DBE8  db        ???
DBE9  fc        ???
DBEA  db        ???
DBEB  01 dc     ORA ($dc,X)
DBED  06 dc     ASL $dc
DBEF  a0 48     LDY #$48
DBF1  a8        TAY
DBF2  58        CLI
DBF3  b0 88     BCS $db7d
DBF5  b8        CLV
DBF6  98        TYA
DBF7  02        ???
DBF8  01 20     ORA ($20,X)
DBFA  d1 d3     CMP ($d3),Y
DBFC  02        ???
DBFD  01 20     ORA ($20,X)
DBFF  d5 d7     CMP $d7,X
DC01  02        ???
DC02  01 20     ORA ($20,X)
DC04  d9 db 02  CMP $02db,Y
DC07  01 20     ORA ($20,X)
DC09  dd df a9  CMP $a9df,X
DC0C  08        PHP
DC0D  49 21     EOR #$21
DC0F  49 fb     EOR #$fb
DC11  48        PHA
DC12  a9 02     LDA #$02
DC14  49 21     EOR #$21
DC16  49 d4     EOR #$d4
DC18  48        PHA
DC19  60        RTS
DC1A  20 a5 b8  JSR $b8a5
DC1D  4a        LSR A
DC1E  4a        LSR A
DC1F  4a        LSR A
DC20  20 25 db  JSR $db25
DC23  20 ab db  JSR $dbab
DC26  20 90 f8  JSR $f890
DC29  20 76 f8  JSR $f876
DC2C  20 06 db  JSR $db06
DC2F  a9 6a     LDA #$6a
DC31  8d 92 00  STA $0092
DC34  a9 dc     LDA #$dc
DC36  8d 93 00  STA $0093
DC39  a9 20     LDA #$20
DC3B  8d 06 20  STA $2006
DC3E  a0 00     LDY #$00
DC40  8c 06 20  STY $2006
DC43  a2 04     LDX #$04
DC45  b1 92     LDA ($92),Y
DC47  8d 07 20  STA $2007
DC4A  c8        INY
DC4B  d0 f8     BNE $dc45
DC4D  ee 93 00  INC $0093
DC50  ca        DEX
DC51  d0 f2     BNE $dc45
DC53  20 81 f8  JSR $f881
DC56  20 9b f8  JSR $f89b
DC59  60        RTS
DC5A  a0 18     LDY #$18
DC5C  69 1d     ADC #$1d
DC5E  0a        ASL A
DC5F  b0 02     BCS $dc63
DC61  69 d7     ADC #$d7
DC63  18        CLC
DC64  69 c1     ADC #$c1
DC66  4c fb f8  JMP $f8fb
DC69  06 7e     ASL $7e
DC6B  7e 7e 7e  ROR $7e7e,X
DC6E  7e 7e 7e  ROR $7e7e,X
DC71  7e 7e 7e  ROR $7e7e,X
DC74  7e 7e 7e  ROR $7e7e,X
DC77  7e 7e 7e  ROR $7e7e,X
DC7A  7e 7e 7e  ROR $7e7e,X
DC7D  7e 7e 7e  ROR $7e7e,X
DC80  7e 7e 7e  ROR $7e7e,X
DC83  7e 7e 7e  ROR $7e7e,X
DC86  7e 7e 7e  ROR $7e7e,X
DC89  7e 7e 7e  ROR $7e7e,X
DC8C  7e 7e 7e  ROR $7e7e,X
DC8F  7e 7e 7e  ROR $7e7e,X
DC92  7e 7e 7e  ROR $7e7e,X
DC95  7e 7e 7e  ROR $7e7e,X
DC98  7e 7e 7e  ROR $7e7e,X
DC9B  7e 7e 7e  ROR $7e7e,X
DC9E  7e 7e 7e  ROR $7e7e,X
DCA1  7e 7e 7e  ROR $7e7e,X
DCA4  7e 7e 7e  ROR $7e7e,X
DCA7  7e 7e 7e  ROR $7e7e,X
DCAA  20 20 20  JSR $2020
DCAD  20 20 20  JSR $2020
DCB0  20 20 20  JSR $2020
DCB3  20 20 18  JSR $1820
DCB6  1a        ???
DCB7  20 20 20  JSR $2020
DCBA  20 20 1c  JSR $1c20
DCBD  1e 20 20  ASL $2020,X
DCC0  20 20 20  JSR $2020
DCC3  20 20 20  JSR $2020
DCC6  20 20 20  JSR $2020
DCC9  20 20 20  JSR $2020
DCCC  20 20 20  JSR $2020
DCCF  20 20 20  JSR $2020
DCD2  20 20 20  JSR $2020
DCD5  19 1b 20  ORA $201b,Y
DCD8  20 7b 20  JSR $207b
DCDB  20 1d 1f  JSR $1f1d
DCDE  20 20 20  JSR $2020
DCE1  20 20 20  JSR $2020
DCE4  00        BRK
DCE5  02        ???
DCE6  08        PHP
DCE7  0a        ASL A
DCE8  20 20 20  JSR $2020
DCEB  20 20 20  JSR $2020
DCEE  20 20 20  JSR $2020
DCF1  20 20 20  JSR $2020
DCF4  20 20 20  JSR $2020
DCF7  20 20 20  JSR $2020
DCFA  20 20 20  JSR $2020
DCFD  20 20 20  JSR $2020
DD00  20 20 20  JSR $2020
DD03  20 01 03  JSR $0301
DD06  09 0b     ORA #$0b
DD08  20 20 7e  JSR $7e20
DD0B  7e 7e 7e  ROR $7e7e,X
DD0E  7e 7e 7e  ROR $7e7e,X
DD11  7e 7e 7e  ROR $7e7e,X
DD14  7e 7e 7e  ROR $7e7e,X
DD17  7e 7e 7e  ROR $7e7e,X
DD1A  7e 7e 7e  ROR $7e7e,X
DD1D  7e 7e 7e  ROR $7e7e,X
DD20  7e 7e 7e  ROR $7e7e,X
DD23  7e 7e 7e  ROR $7e7e,X
DD26  7e 7e 7e  ROR $7e7e,X
DD29  7e 20 04  ROR $0420,X
DD2C  06 08     ASL $08
DD2E  0a        ASL A
DD2F  20 c4 c4  JSR $c4c4
DD32  c4 c4     CPY $c4
DD34  c4 c4     CPY $c4
DD36  c4 c4     CPY $c4
DD38  c4 c4     CPY $c4
DD3A  c4 c4     CPY $c4
DD3C  c4 c4     CPY $c4
DD3E  c4 c4     CPY $c4
DD40  c4 c4     CPY $c4
DD42  7e 7e 7e  ROR $7e7e,X
DD45  7e 7e 5b  ROR $5b7e,X
DD48  7e 7e 20  ROR $207e,X
DD4B  05 07     ORA $07
DD4D  09 0b     ORA #$0b
DD4F  20 c4 c7  JSR $c7c4
DD52  c5 c7     CMP $c7
DD54  c5 c7     CMP $c7
DD56  c5 cb     CMP $cb
DD58  c5 c7     CMP $c7
DD5A  c9 c7     CMP #$c7
DD5C  c5 c7     CMP $c7
DD5E  c5 c7     CMP $c7
DD60  c5 c6     CMP $c6
DD62  7d 7e 7e  ADC $7e7e,X
DD65  7e 7e 7e  ROR $7e7e,X
DD68  7e 7e 20  ROR $207e,X
DD6B  14        ???
DD6C  16 0c     ASL $0c,X
DD6E  0e 20 c4  ASL $c420
DD71  c6 c4     DEC $c4
DD73  c6 c4     DEC $c4
DD75  c6 c4     DEC $c4
DD77  c6 c8     DEC $c8
DD79  ca        DEX
DD7A  c4 c6     CPY $c6
DD7C  c4 c6     CPY $c6
DD7E  c4 c6     CPY $c6
DD80  c4 c6     CPY $c6
DD82  7d 7e 7e  ADC $7e7e,X
DD85  7e 7e 7e  ROR $7e7e,X
DD88  7e 7e 20  ROR $207e,X
DD8B  15 17     ORA $17,X
DD8D  0d 0f 20  ORA $200f
DD90  c4 c7     CPY $c7
DD92  c5 c7     CMP $c7
DD94  c5 c7     CMP $c7
DD96  c5 c7     CMP $c7
DD98  c9 cb     CMP #$cb
DD9A  c5 c7     CMP $c7
DD9C  c5 c7     CMP $c7
DD9E  c5 c7     CMP $c7
DDA0  c5 c6     CMP $c6
DDA2  7d 7e 7e  ADC $7e7e,X
DDA5  7e 7e 7e  ROR $7e7e,X
DDA8  7d 7e 20  ADC $207e,X
DDAB  20 20 5c  JSR $5c20
DDAE  5e 20 c4  LSR $c420,X
DDB1  c6 cc     DEC $cc
DDB3  ce c4 c6  DEC $c6c4
DDB6  c4 ca     CPY $ca
DDB8  c4 c6     CPY $c6
DDBA  c8        INY
DDBB  c6 c4     DEC $c4
DDBD  c6 cc     DEC $cc
DDBF  ce c4 c6  DEC $c6c4
DDC2  7d 7e 7e  ADC $7e7e,X
DDC5  7e 7e 7e  ROR $7e7e,X
DDC8  7d 7e 20  ADC $207e,X
DDCB  20 39 5d  JSR $5d39
DDCE  5f        ???
DDCF  20 c4 c7  JSR $c7c4
DDD2  cd cf c5  CMP $c5cf
DDD5  c7        ???
DDD6  c5 c7     CMP $c7
DDD8  c5 c7     CMP $c7
DDDA  c5 c7     CMP $c7
DDDC  c5 c7     CMP $c7
DDDE  cd cf c5  CMP $c5cf
DDE1  c6 7d     DEC $7d
DDE3  7e 7e 7e  ROR $7e7e,X
DDE6  7e 7e 7d  ROR $7d7e,X
DDE9  7e 20 20  ROR $2020,X
DDEC  20 20 20  JSR $2020
DDEF  20 c4 ce  JSR $cec4
DDF2  c4 c6     CPY $c6
DDF4  cc ce c4  CPY $c4ce
DDF7  c6 cc     DEC $cc
DDF9  ce c4 c6  DEC $c6c4
DDFC  cc ce c4  CPY $c4ce
DDFF  c6 cc     DEC $cc
DE01  c6 7d     DEC $7d
DE03  7e 7e 7e  ROR $7e7e,X
DE06  7e 7e 7d  ROR $7d7e,X
DE09  7e 20 30  ROR $3020,X
DE0C  30 3a     BMI $de48
DE0E  30 30     BMI $de40
DE10  c4 cf     CPY $cf
DE12  c5 c7     CMP $c7
DE14  cd cf c5  CMP $c5cf
DE17  c7        ???
DE18  cd cf c5  CMP $c5cf
DE1B  c7        ???
DE1C  cd cf c5  CMP $c5cf
DE1F  c7        ???
DE20  cd c6 7d  CMP $7dc6
DE23  7e 7e 7e  ROR $7e7e,X
DE26  7e 7e 7d  ROR $7d7e,X
DE29  7e 20 20  ROR $2020,X
DE2C  20 20 20  JSR $2020
DE2F  20 c4 c6  JSR $c6c4
DE32  c4 c6     CPY $c6
DE34  c4 c6     CPY $c6
DE36  c4 c6     CPY $c6
DE38  c4 c6     CPY $c6
DE3A  c4 c6     CPY $c6
DE3C  c4 c6     CPY $c6
DE3E  c4 c6     CPY $c6
DE40  c4 c6     CPY $c6
DE42  7d 7e 7d  ADC $7d7e,X
DE45  7d 7d 7d  ADC $7d7d,X
DE48  7d 7e 20  ADC $207e,X
DE4B  20 20 20  JSR $2020
DE4E  20 20 c4  JSR $c420
DE51  c7        ???
DE52  c5 c5     CMP $c5
DE54  c5 c5     CMP $c5
DE56  c5 c5     CMP $c5
DE58  c5 c5     CMP $c5
DE5A  c5 c5     CMP $c5
DE5C  c5 c5     CMP $c5
DE5E  c5 c5     CMP $c5
DE60  c5 c6     CMP $c6
DE62  7d 7e 7e  ADC $7e7e,X
DE65  7e 7e 7e  ROR $7e7e,X
DE68  7e 7e 20  ROR $207e,X
DE6B  20 20 20  JSR $2020
DE6E  20 20 c4  JSR $c420
DE71  c6 c4     DEC $c4
DE73  c4 c4     CPY $c4
DE75  c4 c4     CPY $c4
DE77  c4 c4     CPY $c4
DE79  c4 c4     CPY $c4
DE7B  c4 c4     CPY $c4
DE7D  c4 c4     CPY $c4
DE7F  c4 c4     CPY $c4
DE81  c6 7d     DEC $7d
DE83  7e e0 e2  ROR $e2e0,X
DE86  e4 e6     CPX $e6
DE88  7e 7e 20  ROR $207e,X
DE8B  20 20 20  JSR $2020
DE8E  20 20 c4  JSR $c420
DE91  c7        ???
DE92  c5 c7     CMP $c7
DE94  c5 c7     CMP $c7
DE96  c5 c7     CMP $c7
DE98  c5 c7     CMP $c7
DE9A  c5 c7     CMP $c7
DE9C  c5 c7     CMP $c7
DE9E  c5 c7     CMP $c7
DEA0  c5 c6     CMP $c6
DEA2  7d 7e e1  ADC $e17e,X
DEA5  e3        ???
DEA6  e5 e7     SBC $e7
DEA8  7d 7e 20  ADC $207e,X
DEAB  00        BRK
DEAC  02        ???
DEAD  08        PHP
DEAE  0a        ASL A
DEAF  20 c4 ce  JSR $cec4
DEB2  c4 c6     CPY $c6
DEB4  cc ce c4  CPY $c4ce
DEB7  c6 cc     DEC $cc
DEB9  ce c4 c6  DEC $c6c4
DEBC  cc ce c4  CPY $c4ce
DEBF  c6 cc     DEC $cc
DEC1  c6 7d     DEC $7d
DEC3  7e e8 ea  ROR $eae8,X
DEC6  ec ee 7d  CPX $7dee
DEC9  7e 20 01  ROR $0120,X
DECC  03        ???
DECD  09 0b     ORA #$0b
DECF  20 c4 cf  JSR $cfc4
DED2  c5 c7     CMP $c7
DED4  cd cf c5  CMP $c5cf
DED7  c7        ???
DED8  cd cf c5  CMP $c5cf
DEDB  c7        ???
DEDC  cd cf c5  CMP $c5cf
DEDF  c7        ???
DEE0  cd c6 7d  CMP $7dc6
DEE3  7e e9 eb  ROR $ebe9,X
DEE6  ed ef 7d  SBC $7def
DEE9  7e 20 10  ROR $1020,X
DEEC  12        ???
DEED  0c        ???
DEEE  0e 20 c4  ASL $c420
DEF1  c6 cc     DEC $cc
DEF3  ce c4 c6  DEC $c6c4
DEF6  c4 c6     CPY $c6
DEF8  c4 c6     CPY $c6
DEFA  c4 c6     CPY $c6
DEFC  c4 c6     CPY $c6
DEFE  cc ce c4  CPY $c4ce
DF01  c6 7d     DEC $7d
DF03  7e f0 f2  ROR $f2f0,X
DF06  f4        ???
DF07  f6 7d     INC $7d,X
DF09  7e 20 11  ROR $1120,X
DF0C  13        ???
DF0D  0d 0f 20  ORA $200f
DF10  c4 c7     CPY $c7
DF12  cd cf c5  CMP $c5cf
DF15  c7        ???
DF16  c5 cb     CMP $cb
DF18  c5 c7     CMP $c7
DF1A  c9 c7     CMP #$c7
DF1C  c5 c7     CMP $c7
DF1E  cd cf c5  CMP $c5cf
DF21  c6 7d     DEC $7d
DF23  7e f1 f3  ROR $f3f1,X
DF26  f5 f7     SBC $f7,X
DF28  7d 7e 20  ADC $207e,X
DF2B  20 20 5c  JSR $5c20
DF2E  5e 20 c4  LSR $c420,X
DF31  c6 c4     DEC $c4
DF33  c6 c4     DEC $c4
DF35  c6 c4     DEC $c4
DF37  c6 c8     DEC $c8
DF39  ca        DEX
DF3A  c4 c6     CPY $c6
DF3C  c4 c6     CPY $c6
DF3E  c4 c6     CPY $c6
DF40  c4 c6     CPY $c6
DF42  7d 7e f8  ADC $f87e,X
DF45  fa        ???
DF46  fc        ???
DF47  fe 7d 7e  INC $7e7d,X
DF4A  20 20 39  JSR $3920
DF4D  5d 5f 20  EOR $205f,X
DF50  c4 c7     CPY $c7
DF52  c5 c7     CMP $c7
DF54  c5 c7     CMP $c7
DF56  c5 c7     CMP $c7
DF58  c9 cb     CMP #$cb
DF5A  c5 c7     CMP $c7
DF5C  c5 c7     CMP $c7
DF5E  c5 c7     CMP $c7
DF60  c5 c6     CMP $c6
DF62  7d 7e f9  ADC $f97e,X
DF65  fb        ???
DF66  fd ff 7d  SBC $7dff,X
DF69  7e 20 20  ROR $2020,X
DF6C  20 20 20  JSR $2020
DF6F  20 c4 c6  JSR $c6c4
DF72  c4 c6     CPY $c6
DF74  c4 c6     CPY $c6
DF76  c4 ca     CPY $ca
DF78  c4 c6     CPY $c6
DF7A  c8        INY
DF7B  c6 c4     DEC $c4
DF7D  c6 c4     DEC $c4
DF7F  c6 c4     DEC $c4
DF81  c6 7d     DEC $7d
DF83  7e 7e 7d  ROR $7d7e,X
DF86  7d 7d 7d  ADC $7d7d,X
DF89  7e 20 30  ROR $3020,X
DF8C  30 3a     BMI $dfc8
DF8E  30 30     BMI $dfc0
DF90  c4 c5     CPY $c5
DF92  c5 c5     CMP $c5
DF94  c5 c5     CMP $c5
DF96  c5 c5     CMP $c5
DF98  c5 c5     CMP $c5
DF9A  c5 c5     CMP $c5
DF9C  c5 c5     CMP $c5
DF9E  c5 c5     CMP $c5
DFA0  c5 c4     CMP $c4
DFA2  7d 7e 7e  ADC $7e7e,X
DFA5  7e 7e 7e  ROR $7e7e,X
DFA8  7e 7e 7e  ROR $7e7e,X
DFAB  7e 7e 7e  ROR $7e7e,X
DFAE  7e 7e 7e  ROR $7e7e,X
DFB1  7d 7d 7d  ADC $7d7d,X
DFB4  7d 7d 7d  ADC $7d7d,X
DFB7  7d 7d 7d  ADC $7d7d,X
DFBA  7d 7d 7d  ADC $7d7d,X
DFBD  7d 7d 7d  ADC $7d7d,X
DFC0  7d 7d 7d  ADC $7d7d,X
DFC3  7e 7e 7e  ROR $7e7e,X
DFC6  7e 7e 7e  ROR $7e7e,X
DFC9  7e 7e 7e  ROR $7e7e,X
DFCC  7e 7e 7e  ROR $7e7e,X
DFCF  7e 7e 7e  ROR $7e7e,X
DFD2  7e 7e 7e  ROR $7e7e,X
DFD5  7e 7e 7e  ROR $7e7e,X
DFD8  7e 7e 7e  ROR $7e7e,X
DFDB  7e 7e 7e  ROR $7e7e,X
DFDE  7e 7e 7e  ROR $7e7e,X
DFE1  7e 7e 7e  ROR $7e7e,X
DFE4  7e 7e 7e  ROR $7e7e,X
DFE7  7e 7e 7e  ROR $7e7e,X
DFEA  7e 7e 7e  ROR $7e7e,X
DFED  7e 7e 7e  ROR $7e7e,X
DFF0  7e 7e 7e  ROR $7e7e,X
DFF3  7e 7e 7e  ROR $7e7e,X
DFF6  7e 7e 7e  ROR $7e7e,X
DFF9  7e 7e 7e  ROR $7e7e,X
DFFC  7e 7e 7e  ROR $7e7e,X
DFFF  7e 7e 7e  ROR $7e7e,X
E002  7e 7e 7e  ROR $7e7e,X
E005  7e 7e 7e  ROR $7e7e,X
E008  7e 7e 7e  ROR $7e7e,X
E00B  7e 7e 7e  ROR $7e7e,X
E00E  7e 7e 7e  ROR $7e7e,X
E011  7e 7e 7e  ROR $7e7e,X
E014  7e 7e 7e  ROR $7e7e,X
E017  7e 7e 7e  ROR $7e7e,X
E01A  7e 7e 7e  ROR $7e7e,X
E01D  7e 7e 7e  ROR $7e7e,X
E020  7e 7e 7e  ROR $7e7e,X
E023  7e 7e 7e  ROR $7e7e,X
E026  7e 7e 7e  ROR $7e7e,X
E029  7e ff ff  ROR $ffff,X
E02C  ff        ???
E02D  ff        ???
E02E  ff        ???
E02F  ff        ???
E030  ff        ???
E031  ff        ???
E032  5f        ???
E033  1f        ???
E034  0f        ???
E035  0f        ???
E036  0f        ???
E037  0f        ???
E038  ff        ???
E039  ff        ???
E03A  5f        ???
E03B  13        ???
E03C  00        BRK
E03D  00        BRK
E03E  00        BRK
E03F  00        BRK
E040  aa        TAX
E041  ee ff 33  INC $33ff
E044  00        BRK
E045  00        BRK
E046  00        BRK
E047  00        BRK
E048  fa        ???
E049  fe 5f 13  INC $135f,X
E04C  00        BRK
E04D  00        BRK
E04E  00        BRK
E04F  00        BRK
E050  bb        ???
E051  ee 5f 13  INC $135f
E054  00        BRK
E055  00        BRK
E056  00        BRK
E057  00        BRK
E058  bb        ???
E059  ee ff f3  INC $f3ff
E05C  f0 f0     BEQ $e04e
E05E  f0 f0     BEQ $e050
E060  ff        ???
E061  ff        ???
E062  ff        ???
E063  ff        ???
E064  ff        ???
E065  ff        ???
E066  ff        ???
E067  ff        ???
E068  ff        ???
E069  ff        ???
E06A  a2 ff     LDX #$ff
E06C  a9 b7     LDA #$b7
E06E  20 62 d8  JSR $d862
E071  a9 3c     LDA #$3c
E073  8d 5d 04  STA $045d
E076  a2 00     LDX #$00
E078  a9 53     LDA #$53
E07A  20 62 d8  JSR $d862
E07D  a9 25     LDA #$25
E07F  8d 46 04  STA $0446
E082  4d 5d 04  EOR $045d
E085  49 66     EOR #$66
E087  60        RTS
E088  56 bb     LSR $bb,X
E08A  d4        ???
E08B  f2        ???
E08C  9a        TXS
E08D  db        ???
E08E  76 9a     ROR $9a,X
E090  db        ???
E091  56 9a     LSR $9a,X
E093  db        ???
E094  56 9a     LSR $9a,X
E096  d8        CLD
E097  56 24     LSR $24,X
E099  72        ???
E09A  9a        TXS
E09B  db        ???
E09C  56 9a     LSR $9a,X
E09E  d8        CLD
E09F  56 db     LSR $db,X
E0A1  72        ???
E0A2  9a        TXS
E0A3  d9 56 9a  CMP $9a56,Y
E0A6  da        ???
E0A7  55 ad     EOR $ad,X
E0A9  a0 00     LDY #$00
E0AB  a2 0a     LDX #$0a
E0AD  20 fa e0  JSR $e0fa
E0B0  c8        INY
E0B1  ca        DEX
E0B2  d0 f9     BNE $e0ad
E0B4  c8        INY
E0B5  c8        INY
E0B6  c0 6c     CPY #$6c
E0B8  d0 f1     BNE $e0ab
E0BA  60        RTS
E0BB  a9 20     LDA #$20
E0BD  d7        ???
E0BE  e0 20     CPX #$20
E0C0  e5 e0     SBC $e0
E0C2  a0 10     LDY #$10
E0C4  b9 ed e1  LDA $e1ed,Y
E0C7  99 84 00  STA $0084,Y
E0CA  30 03     BMI $e0cf
E0CC  aa        TAX
E0CD  94 00     STY $00,X
E0CF  c8        INY
E0D0  c0 30     CPY #$30
E0D2  d0 f0     BNE $e0c4
E0D4  60        RTS
E0D5  48        PHA
E0D6  b5 a0     LDA $a0,X
E0D8  e6 a9     INC $a9
E0DA  ff        ???
E0DB  99 00 00  STA $0000,Y
E0DE  c8        INY
E0DF  c0 84     CPY #$84
E0E1  d0 f8     BNE $e0db
E0E3  60        RTS
E0E4  ae a0 00  LDX $00a0
E0E7  a9 00     LDA #$00
E0E9  a2 0a     LDX #$0a
E0EB  99 00 00  STA $0000,Y
E0EE  c8        INY
E0EF  ca        DEX
E0F0  d0 f9     BNE $e0eb
E0F2  c8        INY
E0F3  c8        INY
E0F4  c0 6c     CPY #$6c
E0F6  d0 f1     BNE $e0e9
E0F8  60        RTS
E0F9  bc 48 8a  LDY $8a48,X
E0FC  48        PHA
E0FD  98        TYA
E0FE  48        PHA
E0FF  b6 00     LDX $00,Y
E101  d0 0d     BNE $e110
E103  20 ae e3  JSR $e3ae
E106  b9 7d e2  LDA $e27d,Y
E109  20 ae e3  JSR $e3ae
E10C  4c 13 e1  JMP $e113
E10F  20 bd 4d  JSR $4dbd
E112  e2        ???
E113  20 24 e1  JSR $e124
E116  68        PLA
E117  a8        TAY
E118  68        PLA
E119  aa        TAX
E11A  68        PLA
E11B  60        RTS
E11C  20 4d d1  JSR $d14d
E11F  ff        ???
E120  4c f0 d2  JMP $d2f0
E123  91 48     STA ($48),Y
E125  8a        TXA
E126  48        PHA
E127  98        TYA
E128  48        PHA
E129  20 00 fa  JSR $fa00
E12C  20 b5 e1  JSR $e1b5
E12F  a8        TAY
E130  a9 20     LDA #$20
E132  20 89 f7  JSR $f789
E135  a9 02     LDA #$02
E137  20 76 f7  JSR $f776
E13A  ba        TSX
E13B  bd 03 01  LDA $0103,X
E13E  0a        ASL A
E13F  0a        ASL A
E140  aa        TAX
E141  bd e9 e2  LDA $e2e9,X
E144  20 76 f7  JSR $f776
E147  bd eb e2  LDA $e2eb,X
E14A  20 76 f7  JSR $f776
E14D  ba        TSX
E14E  bd 01 01  LDA $0101,X
E151  a8        TAY
E152  20 b5 e1  JSR $e1b5
E155  a8        TAY
E156  c8        INY
E157  a9 20     LDA #$20
E159  20 89 f7  JSR $f789
E15C  a9 02     LDA #$02
E15E  20 76 f7  JSR $f776
E161  ba        TSX
E162  bd 03 01  LDA $0103,X
E165  0a        ASL A
E166  0a        ASL A
E167  aa        TAX
E168  bd ea e2  LDA $e2ea,X
E16B  20 76 f7  JSR $f776
E16E  bd ec e2  LDA $e2ec,X
E171  20 76 f7  JSR $f776
E174  20 31 fa  JSR $fa31
E177  68        PLA
E178  a8        TAY
E179  68        PLA
E17A  aa        TAX
E17B  68        PLA
E17C  60        RTS
E17D  2c a2 54  BIT $54a2
E180  8e d0 00  STX $00d0
E183  a9 c8     LDA #$c8
E185  8d d1 00  STA $00d1
E188  98        TYA
E189  18        CLC
E18A  4c 8e e1  JMP $e18e
E18D  fe 69 79  INC $7969,X
E190  8d 5f 04  STA $045f
E193  c8        INY
E194  b1 d0     LDA ($d0),Y
E196  8d d2 00  STA $00d2
E199  c8        INY
E19A  b1 d0     LDA ($d0),Y
E19C  8d d3 00  STA $00d3
E19F  6c d2 00  JMP ($00d2)
E1A2  f6 18     INC $18,X
E1A4  69 9b     ADC #$9b
E1A6  18        CLC
E1A7  69 86     ADC #$86
E1A9  0a        ASL A
E1AA  b0 02     BCS $e1ae
E1AC  69 0f     ADC #$0f
E1AE  8d 5e 04  STA $045e
E1B1  4c 5b dc  JMP $dc5b
E1B4  2d 48 8a  AND $8a48
E1B7  48        PHA
E1B8  98        TYA
E1B9  48        PHA
E1BA  20 ae e3  JSR $e3ae
E1BD  ba        TSX
E1BE  a9 0c     LDA #$0c
E1C0  20 ab ff  JSR $ffab
E1C3  0a        ASL A
E1C4  18        CLC
E1C5  69 06     ADC #$06
E1C7  9d 03 01  STA $0103,X
E1CA  98        TYA
E1CB  49 ff     EOR #$ff
E1CD  18        CLC
E1CE  69 09     ADC #$09
E1D0  0a        ASL A
E1D1  18        CLC
E1D2  69 06     ADC #$06
E1D4  9d 02 01  STA $0102,X
E1D7  68        PLA
E1D8  a8        TAY
E1D9  68        PLA
E1DA  aa        TAX
E1DB  68        PLA
E1DC  60        RTS
E1DD  ff        ???
E1DE  ff        ???
E1DF  ff        ???
E1E0  ff        ???
E1E1  ff        ???
E1E2  ff        ???
E1E3  ff        ???
E1E4  ff        ???
E1E5  ff        ???
E1E6  ff        ???
E1E7  ff        ???
E1E8  ff        ???
E1E9  ff        ???
E1EA  ff        ???
E1EB  ff        ???
E1EC  ff        ???
E1ED  ff        ???
E1EE  ff        ???
E1EF  ff        ???
E1F0  ff        ???
E1F1  ff        ???
E1F2  ff        ???
E1F3  ff        ???
E1F4  ff        ???
E1F5  ff        ???
E1F6  ff        ???
E1F7  ff        ???
E1F8  ff        ???
E1F9  ff        ???
E1FA  ff        ???
E1FB  ff        ???
E1FC  ff        ???
E1FD  30 60     BMI $e25f
E1FF  00        BRK
E200  56 0e     LSR $0e,X
E202  54        ???
E203  0c        ???
E204  3c        ???
E205  24 48     BIT $48
E207  18        CLC
E208  63        ???
E209  4b        ???
E20A  33        ???
E20B  1b        ???
E20C  03        ???
E20D  39 69 09  AND $0969,Y
E210  5b        ???
E211  13        ???
E212  5d 15 45  EOR $4515,X
E215  2d 51 21  AND $2151
E218  66 4e     ROR $4e
E21A  36 1e     ROL $1e,X
E21C  06 30     ASL $30
E21E  60        RTS
E21F  00        BRK
E220  56 0e     LSR $0e,X
E222  54        ???
E223  0c        ???
E224  3c        ???
E225  24 48     BIT $48
E227  18        CLC
E228  63        ???
E229  4b        ???
E22A  33        ???
E22B  1b        ???
E22C  03        ???
E22D  39 69 09  AND $0969,Y
E230  5b        ???
E231  13        ???
E232  ff        ???
E233  15 45     ORA $45,X
E235  2d 51 21  AND $2151
E238  66 4e     ROR $4e
E23A  36 1e     ROL $1e,X
E23C  06 30     ASL $30
E23E  60        RTS
E23F  00        BRK
E240  56 0e     LSR $0e,X
E242  54        ???
E243  0c        ???
E244  3c        ???
E245  24 48     BIT $48
E247  18        CLC
E248  63        ???
E249  4b        ???
E24A  33        ???
E24B  1b        ???
E24C  03        ???
E24D  39 69 09  AND $0969,Y
E250  5b        ???
E251  13        ???
E252  ff        ???
E253  ff        ???
E254  45 2d     EOR $2d
E256  51 21     EOR ($21),Y
E258  66 4e     ROR $4e
E25A  36 1e     ROL $1e,X
E25C  06 01     ASL $01
E25E  04        ???
E25F  04        ???
E260  06 06     ASL $06
E262  05 05     ORA $05
E264  02        ???
E265  02        ???
E266  03        ???
E267  03        ???
E268  07        ???
E269  07        ???
E26A  07        ???
E26B  07        ???
E26C  07        ???
E26D  09 0c     ORA #$0c
E26F  0c        ???
E270  0e 0e 0d  ASL $0d0e
E273  0d 0a 0a  ORA $0a0a
E276  0b        ???
E277  0b        ???
E278  0f        ???
E279  0f        ???
E27A  0f        ???
E27B  0f        ???
E27C  0f        ???
E27D  15 12     ORA $12,X
E27F  12        ???
E280  23        ???
E281  12        ???
E282  12        ???
E283  23        ???
E284  12        ???
E285  12        ???
E286  17        ???
E287  00        BRK
E288  00        BRK
E289  10 20     BPL $e2ab
E28B  22        ???
E28C  20 2f 30  JSR $302f
E28F  20 22 20  JSR $2022
E292  13        ???
E293  00        BRK
E294  00        BRK
E295  10 20     BPL $e2b7
E297  20 22 2d  JSR $2d22
E29A  2e 22 20  ROL $2022
E29D  20 13 00  JSR $0013
E2A0  00        BRK
E2A1  19 20 1d  ORA $1d20,Y
E2A4  20 2b 2c  JSR $2c2b
E2A7  20 1f 20  JSR $201f
E2AA  1b        ???
E2AB  00        BRK
E2AC  00        BRK
E2AD  10 21     BPL $e2d0
E2AF  20 22 13  JSR $1322
E2B2  10 22     BPL $e2d6
E2B4  20 21 13  JSR $1321
E2B7  00        BRK
E2B8  00        BRK
E2B9  18        CLC
E2BA  20 1c 20  JSR $201c
E2BD  29 2a     AND #$2a
E2BF  20 1e 20  JSR $201e
E2C2  1a        ???
E2C3  00        BRK
E2C4  00        BRK
E2C5  10 20     BPL $e2e7
E2C7  20 22 27  JSR $2722
E2CA  28        PLP
E2CB  22        ???
E2CC  20 20 13  JSR $1320
E2CF  00        BRK
E2D0  00        BRK
E2D1  10 20     BPL $e2f3
E2D3  22        ???
E2D4  20 25 26  JSR $2625
E2D7  20 22 20  JSR $2022
E2DA  13        ???
E2DB  00        BRK
E2DC  00        BRK
E2DD  14        ???
E2DE  11 11     ORA ($11),Y
E2E0  24 11     BIT $11
E2E2  11 24     ORA ($24),Y
E2E4  11 11     ORA ($11),Y
E2E6  16 00     ASL $00,X
E2E8  00        BRK
E2E9  80        ???
E2EA  81 82     STA ($82,X)
E2EC  83        ???
E2ED  84 85     STY $85
E2EF  86 87     STX $87
E2F1  88        DEY
E2F2  89        ???
E2F3  8a        TXA
E2F4  8b        ???
E2F5  8c 8d 8e  STY $8e8d
E2F8  8f        ???
E2F9  90 91     BCC $e28c
E2FB  92        ???
E2FC  93        ???
E2FD  94 95     STY $95,X
E2FF  96 97     STX $97,Y
E301  98        TYA
E302  99 9a 9b  STA $9b9a,Y
E305  9c        ???
E306  9d 9e 9f  STA $9f9e,X
E309  a0 a1     LDY #$a1
E30B  a2 a3     LDX #$a3
E30D  a4 a5     LDY $a5
E30F  a6 a7     LDX $a7
E311  a8        TAY
E312  a9 aa     LDA #$aa
E314  ab        ???
E315  ac ad ae  LDY $aead
E318  af        ???
E319  b0 b1     BCS $e2cc
E31B  b2        ???
E31C  b3        ???
E31D  b4 b5     LDY $b5,X
E31F  b6 b7     LDX $b7,Y
E321  b8        CLV
E322  b9 ba bb  LDA $bbba,Y
E325  bc bd be  LDY $bebd,X
E328  bf        ???
E329  c4 c5     CPY $c5
E32B  c4 c7     CPY $c7
E32D  c4 c4     CPY $c4
E32F  c6 c7     DEC $c7
E331  c4 c5     CPY $c5
E333  c6 c6     DEC $c6
E335  c4 c5     CPY $c5
E337  c6 c5     DEC $c5
E339  c4 c4     CPY $c4
E33B  c4 c7     CPY $c7
E33D  c4 c5     CPY $c5
E33F  c4 c6     CPY $c6
E341  c4 c4     CPY $c4
E343  c6 c5     DEC $c5
E345  c4 c5     CPY $c5
E347  c6 c4     DEC $c4
E349  c4 c5     CPY $c5
E34B  c4 cb     CPY $cb
E34D  c4 c9     CPY $c9
E34F  c4 c7     CPY $c7
E351  c4 c5     CPY $c5
E353  ca        DEX
E354  c5 c8     CMP $c8
E356  c5 c6     CMP $c6
E358  c5 c4     CMP $c4
E35A  c5 ca     CMP $ca
E35C  c7        ???
E35D  c8        INY
E35E  c5 c6     CMP $c6
E360  c7        ???
E361  c4 c5     CPY $c5
E363  c6 cb     DEC $cb
E365  c4 c9     CPY $c9
E367  c6 c7     DEC $c7
E369  c4 c5     CPY $c5
E36B  c6 c7     DEC $c7
E36D  c8        INY
E36E  c9 ca     CMP #$ca
E370  cb        ???
E371  cc cd ce  CPY $cecd
E374  cf        ???
E375  cc cd c6  CPY $c6cd
E378  c6 c4     DEC $c4
E37A  c4 ce     CPY $ce
E37C  cf        ???
E37D  c4 c5     CPY $c5
E37F  c6 d0     DEC $d0
E381  c4 c5     CPY $c5
E383  d1 c7     CMP ($c7),Y
E385  c4 d2     CPY $d2
E387  c6 d4     DEC $d4
E389  d3        ???
E38A  c5 d5     CMP $d5
E38C  c7        ???
E38D  c4 d6     CPY $d6
E38F  c6 c5     DEC $c5
E391  d7        ???
E392  c5 c4     CMP $c4
E394  c7        ???
E395  c4 c5     CPY $c5
E397  c6 d8     DEC $d8
E399  c4 c5     CPY $c5
E39B  d9 c7 c4  CMP $c4c7,Y
E39E  da        ???
E39F  c6 dc     DEC $dc
E3A1  db        ???
E3A2  c5 dd     CMP $dd
E3A4  c7        ???
E3A5  c4 de     CPY $de
E3A7  c6 c5     DEC $c5
E3A9  df        ???
E3AA  c5 c4     CMP $c4
E3AC  c7        ???
E3AD  a6 48     LDX $48
E3AF  c0 6a     CPY #$6a
E3B1  b0 14     BCS $e3c7
E3B3  a5 b4     LDA $b4
E3B5  29 01     AND #$01
E3B7  f0 04     BEQ $e3bd
E3B9  b9 33 e4  LDA $e433,Y
E3BC  a8        TAY
E3BD  a5 b4     LDA $b4
E3BF  29 02     AND #$02
E3C1  f0 04     BEQ $e3c7
E3C3  b9 c9 e3  LDA $e3c9,Y
E3C6  a8        TAY
E3C7  68        PLA
E3C8  60        RTS
E3C9  09 08     ORA #$08
E3CB  07        ???
E3CC  06 05     ASL $05
E3CE  04        ???
E3CF  03        ???
E3D0  02        ???
E3D1  01 00     ORA ($00,X)
E3D3  0a        ASL A
E3D4  0b        ???
E3D5  15 14     ORA $14,X
E3D7  13        ???
E3D8  12        ???
E3D9  11 10     ORA ($10),Y
E3DB  0f        ???
E3DC  0e 0d 0c  ASL $0c0d
E3DF  16 17     ASL $17,X
E3E1  21 20     AND ($20,X)
E3E3  1f        ???
E3E4  1e 1d 1c  ASL $1c1d,X
E3E7  1b        ???
E3E8  1a        ???
E3E9  19 18 22  ORA $2218,Y
E3EC  23        ???
E3ED  2d 2c 2b  AND $2b2c
E3F0  2a        ROL A
E3F1  29 28     AND #$28
E3F3  27        ???
E3F4  26 25     ROL $25
E3F6  24 2e     BIT $2e
E3F8  2f        ???
E3F9  39 38 37  AND $3738,Y
E3FC  36 35     ROL $35,X
E3FE  34        ???
E3FF  33        ???
E400  32        ???
E401  31 30     AND ($30),Y
E403  3a        ???
E404  3b        ???
E405  45 44     EOR $44
E407  43        ???
E408  42        ???
E409  41 40     EOR ($40,X)
E40B  3f        ???
E40C  3e 3d 3c  ROL $3c3d,X
E40F  46 47     LSR $47
E411  51 50     EOR ($50),Y
E413  4f        ???
E414  4e 4d 4c  LSR $4c4d
E417  4b        ???
E418  4a        LSR A
E419  49 48     EOR #$48
E41B  52        ???
E41C  53        ???
E41D  5d 5c 5b  EOR $5b5c,X
E420  5a        ???
E421  59 58 57  EOR $5758,Y
E424  56 55     LSR $55,X
E426  54        ???
E427  5e 5f 69  LSR $695f,X
E42A  68        PLA
E42B  67        ???
E42C  66 65     ROR $65
E42E  64        ???
E42F  63        ???
E430  62        ???
E431  61 60     ADC ($60,X)
E433  60        RTS
E434  61 62     ADC ($62,X)
E436  63        ???
E437  64        ???
E438  65 66     ADC $66
E43A  67        ???
E43B  68        PLA
E43C  69 0a     ADC #$0a
E43E  0b        ???
E43F  54        ???
E440  55 56     EOR $56,X
E442  57        ???
E443  58        CLI
E444  59 5a 5b  EOR $5b5a,Y
E447  5c        ???
E448  5d 16 17  EOR $1716,X
E44B  48        PHA
E44C  49 4a     EOR #$4a
E44E  4b        ???
E44F  4c 4d 4e  JMP $4e4d
E452  4f        ???
E453  50 51     BVC $e4a6
E455  22        ???
E456  23        ???
E457  3c        ???
E458  3d 3e 3f  AND $3f3e,X
E45B  40        RTI
E45C  41 42     EOR ($42,X)
E45E  43        ???
E45F  44        ???
E460  45 2e     EOR $2e
E462  2f        ???
E463  30 31     BMI $e496
E465  32        ???
E466  33        ???
E467  34        ???
E468  35 36     AND $36,X
E46A  37        ???
E46B  38        SEC
E46C  39 3a 3b  AND $3b3a,Y
E46F  24 25     BIT $25
E471  26 27     ROL $27
E473  28        PLP
E474  29 2a     AND #$2a
E476  2b        ???
E477  2c 2d 46  BIT $462d
E47A  47        ???
E47B  18        CLC
E47C  19 1a 1b  ORA $1b1a,Y
E47F  1c        ???
E480  1d 1e 1f  ORA $1f1e,X
E483  20 21 52  JSR $5221
E486  53        ???
E487  0c        ???
E488  0d 0e 0f  ORA $0f0e
E48B  10 11     BPL $e49e
E48D  12        ???
E48E  13        ???
E48F  14        ???
E490  15 5e     ORA $5e,X
E492  5f        ???
E493  00        BRK
E494  01 02     ORA ($02,X)
E496  03        ???
E497  04        ???
E498  05 06     ORA $06
E49A  07        ???
E49B  08        PHP
E49C  09 f0     ORA #$f0
E49E  38        SEC
E49F  a6 c1     LDX $c1
E4A1  30 49     BMI $e4ec
E4A3  a6 c0     LDX $c0
E4A5  30 45     BMI $e4ec
E4A7  b5 00     LDA $00,X
E4A9  f0 41     BEQ $e4ec
E4AB  29 30     AND #$30
E4AD  a4 c1     LDY $c1
E4AF  39 00 00  AND $0000,Y
E4B2  d0 38     BNE $e4ec
E4B4  20 49 80  JSR $8049
E4B7  38        SEC
E4B8  d0 32     BNE $e4ec
E4BA  20 45 e6  JSR $e645
E4BD  20 0f e6  JSR $e60f
E4C0  a9 01     LDA #$01
E4C2  20 83 e8  JSR $e883
E4C5  a4 c0     LDY $c0
E4C7  20 fa e0  JSR $e0fa
E4CA  a4 c0     LDY $c0
E4CC  a6 c1     LDX $c1
E4CE  b5 00     LDA $00,X
E4D0  20 a3 e6  JSR $e6a3
E4D3  a4 c1     LDY $c1
E4D5  20 fa e0  JSR $e0fa
E4D8  a4 c1     LDY $c1
E4DA  a2 00     LDX #$00
E4DC  20 d3 d9  JSR $d9d3
E4DF  ee 88 03  INC $0388
E4E2  20 0a e8  JSR $e80a
E4E5  20 f7 bd  JSR $bdf7
E4E8  20 cd bb  JSR $bbcd
E4EB  18        CLC
E4EC  60        RTS
E4ED  90 ae     BCC $e49d
E4EF  88        DEY
E4F0  03        ???
E4F1  20 50 e5  JSR $e550
E4F4  20 9e e4  JSR $e49e
E4F7  60        RTS
E4F8  1e 16 ad  ASL $ad16,X
E4FB  e2        ???
E4FC  ff        ???
E4FD  4c 1d e1  JMP $e11d
E500  20 6c ad  JSR $ad6c
E503  88        DEY
E504  03        ???
E505  38        SEC
E506  f0 2d     BEQ $e535
E508  ce 88 03  DEC $0388
E50B  20 50 e5  JSR $e550
E50E  20 6c e6  JSR $e66c
E511  a9 02     LDA #$02
E513  20 83 e8  JSR $e883
E516  a4 c1     LDY $c1
E518  20 fa e0  JSR $e0fa
E51B  a6 c0     LDX $c0
E51D  b5 00     LDA $00,X
E51F  20 a3 e6  JSR $e6a3
E522  a4 c0     LDY $c0
E524  20 fa e0  JSR $e0fa
E527  a4 c0     LDY $c0
E529  a2 00     LDX #$00
E52B  20 d3 d9  JSR $d9d3
E52E  20 f7 bd  JSR $bdf7
E531  20 e5 bd  JSR $bde5
E534  18        CLC
E535  60        RTS
E536  86 48     STX $48
E538  8a        TXA
E539  48        PHA
E53A  98        TYA
E53B  48        PHA
E53C  ba        TSX
E53D  bd 03 01  LDA $0103,X
E540  a8        TAY
E541  bd 02 01  LDA $0102,X
E544  aa        TAX
E545  98        TYA
E546  20 7b f7  JSR $f77b
E549  68        PLA
E54A  a8        TAY
E54B  68        PLA
E54C  aa        TAX
E54D  68        PLA
E54E  60        RTS
E54F  20 a5 b4  JSR $b4a5
E552  09 80     ORA #$80
E554  85 b4     STA $b4
E556  a5 b4     LDA $b4
E558  30 fc     BMI $e556
E55A  ad b2 04  LDA $04b2
E55D  85 c0     STA $c0
E55F  ad c2 04  LDA $04c2
E562  85 c1     STA $c1
E564  ad d2 04  LDA $04d2
E567  85 c3     STA $c3
E569  60        RTS
E56A  68        PLA
E56B  8d a5 b4  STA $b4a5
E56E  30 02     BMI $e572
E570  60        RTS
E571  85 ad     STA $ad
E573  88        DEY
E574  03        ???
E575  2a        ROL A
E576  2a        ROL A
E577  2a        ROL A
E578  29 03     AND #$03
E57A  09 28     ORA #$28
E57C  8d 06 20  STA $2006
E57F  ad 88 03  LDA $0388
E582  0a        ASL A
E583  0a        ASL A
E584  8d 06 20  STA $2006
E587  ad 07 20  LDA $2007
E58A  ad 07 20  LDA $2007
E58D  8d b2 04  STA $04b2
E590  ad 07 20  LDA $2007
E593  8d c2 04  STA $04c2
E596  ad 07 20  LDA $2007
E599  8d d2 04  STA $04d2
E59C  ad 07 20  LDA $2007
E59F  85 c2     STA $c2
E5A1  ad 88 03  LDA $0388
E5A4  38        SEC
E5A5  e9 01     SBC #$01
E5A7  2a        ROL A
E5A8  2a        ROL A
E5A9  2a        ROL A
E5AA  29 03     AND #$03
E5AC  09 28     ORA #$28
E5AE  8d 06 20  STA $2006
E5B1  ad 88 03  LDA $0388
E5B4  38        SEC
E5B5  e9 01     SBC #$01
E5B7  0a        ASL A
E5B8  0a        ASL A
E5B9  8d 06 20  STA $2006
E5BC  ad 07 20  LDA $2007
E5BF  ad 07 20  LDA $2007
E5C2  8d b1 04  STA $04b1
E5C5  ad 07 20  LDA $2007
E5C8  8d c1 04  STA $04c1
E5CB  ad 07 20  LDA $2007
E5CE  8d d1 04  STA $04d1
E5D1  ad 07 20  LDA $2007
E5D4  ad 88 03  LDA $0388
E5D7  38        SEC
E5D8  e9 02     SBC #$02
E5DA  2a        ROL A
E5DB  2a        ROL A
E5DC  2a        ROL A
E5DD  29 03     AND #$03
E5DF  09 28     ORA #$28
E5E1  8d 06 20  STA $2006
E5E4  ad 88 03  LDA $0388
E5E7  38        SEC
E5E8  e9 02     SBC #$02
E5EA  0a        ASL A
E5EB  0a        ASL A
E5EC  8d 06 20  STA $2006
E5EF  ad 07 20  LDA $2007
E5F2  ad 07 20  LDA $2007
E5F5  8d b0 04  STA $04b0
E5F8  ad 07 20  LDA $2007
E5FB  8d c0 04  STA $04c0
E5FE  ad 07 20  LDA $2007
E601  8d d0 04  STA $04d0
E604  ad 07 20  LDA $2007
E607  a5 b4     LDA $b4
E609  29 7f     AND #$7f
E60B  85 b4     STA $b4
E60D  60        RTS
E60E  a0 20     LDY #$20
E610  00        BRK
E611  fa        ???
E612  ad 88 03  LDA $0388
E615  2a        ROL A
E616  2a        ROL A
E617  2a        ROL A
E618  29 03     AND #$03
E61A  09 28     ORA #$28
E61C  20 19 fa  JSR $fa19
E61F  ad 88 03  LDA $0388
E622  0a        ASL A
E623  0a        ASL A
E624  20 19 fa  JSR $fa19
E627  a9 04     LDA #$04
E629  20 19 fa  JSR $fa19
E62C  a5 c0     LDA $c0
E62E  20 19 fa  JSR $fa19
E631  a5 c1     LDA $c1
E633  20 19 fa  JSR $fa19
E636  a5 c3     LDA $c3
E638  20 19 fa  JSR $fa19
E63B  a5 c2     LDA $c2
E63D  20 19 fa  JSR $fa19
E640  20 31 fa  JSR $fa31
E643  60        RTS
E644  a2 a5     LDX #$a5
E646  c7        ???
E647  49 30     EOR #$30
E649  85 c7     STA $c7
E64B  a4 c1     LDY $c1
E64D  b9 00 00  LDA $0000,Y
E650  85 c3     STA $c3
E652  aa        TAX
E653  a9 ff     LDA #$ff
E655  95 84     STA $84,X
E657  a6 c0     LDX $c0
E659  b5 00     LDA $00,X
E65B  99 00 00  STA $0000,Y
E65E  85 c2     STA $c2
E660  aa        TAX
E661  94 84     STY $84,X
E663  a4 c0     LDY $c0
E665  a2 00     LDX #$00
E667  96 00     STX $00,Y
E669  60        RTS
E66A  ac 53 a5  LDY $a553
E66D  c7        ???
E66E  49 30     EOR #$30
E670  85 c7     STA $c7
E672  a4 c1     LDY $c1
E674  a5 c3     LDA $c3
E676  aa        TAX
E677  94 84     STY $84,X
E679  b6 00     LDX $00,Y
E67B  99 00 00  STA $0000,Y
E67E  a4 c0     LDY $c0
E680  94 84     STY $84,X
E682  96 00     STX $00,Y
E684  86 c2     STX $c2
E686  60        RTS
E687  a5 a9     LDA $a9
E689  86 49     STX $49
E68B  12        ???
E68C  49 6a     EOR #$6a
E68E  4c 92 e6  JMP $e692
E691  5e 49 b8  LSR $b849,X
E694  49 7e     EOR #$7e
E696  49 1d     EOR #$1d
E698  49 5e     EOR #$5e
E69A  0a        ASL A
E69B  90 02     BCC $e69f
E69D  49 70     EOR #$70
E69F  4c 0c bf  JMP $bf0c
E6A2  4e 48 8a  LSR $8a48
E6A5  48        PHA
E6A6  98        TYA
E6A7  48        PHA
E6A8  ba        TSX
E6A9  bd 03 01  LDA $0103,X
E6AC  a8        TAY
E6AD  b9 4d e2  LDA $e24d,Y
E6B0  8d 70 03  STA $0370
E6B3  bd 02 01  LDA $0102,X
E6B6  a8        TAY
E6B7  20 ae e3  JSR $e3ae
E6BA  98        TYA
E6BB  9d 02 01  STA $0102,X
E6BE  bd 01 01  LDA $0101,X
E6C1  a8        TAY
E6C2  20 ae e3  JSR $e3ae
E6C5  98        TYA
E6C6  38        SEC
E6C7  fd 02 01  SBC $0102,X
E6CA  49 ff     EOR #$ff
E6CC  18        CLC
E6CD  69 01     ADC #$01
E6CF  a8        TAY
E6D0  b9 09 e7  LDA $e709,Y
E6D3  29 0f     AND #$0f
E6D5  8d 71 03  STA $0371
E6D8  a9 01     LDA #$01
E6DA  8d 72 03  STA $0372
E6DD  b9 09 e7  LDA $e709,Y
E6E0  29 f0     AND #$f0
E6E2  4a        LSR A
E6E3  8d 73 03  STA $0373
E6E6  bc 01 01  LDY $0101,X
E6E9  20 c4 d8  JSR $d8c4
E6EC  20 f9 d8  JSR $d8f9
E6EF  8d 74 03  STA $0374
E6F2  98        TYA
E6F3  8d 75 03  STA $0375
E6F6  a9 01     LDA #$01
E6F8  8d 76 03  STA $0376
E6FB  8d 77 03  STA $0377
E6FE  ad 73 03  LDA $0373
E701  d0 fb     BNE $e6fe
E703  68        PLA
E704  a8        TAY
E705  68        PLA
E706  aa        TAX
E707  68        PLA
E708  60        RTS
E709  00        BRK
E70A  11 21     ORA ($21),Y
E70C  31 41     AND ($41),Y
E70E  51 61     EOR ($61),Y
E710  71 81     ADC ($81),Y
E712  91 29     STA ($29),Y
E714  15 13     ORA $13,X
E716  17        ???
E717  2b        ???
E718  00        BRK
E719  00        BRK
E71A  00        BRK
E71B  00        BRK
E71C  00        BRK
E71D  00        BRK
E71E  00        BRK
E71F  25 2e     AND $2e
E721  23        ???
E722  2f        ???
E723  27        ???
E724  00        BRK
E725  00        BRK
E726  00        BRK
E727  00        BRK
E728  00        BRK
E729  00        BRK
E72A  00        BRK
E72B  00        BRK
E72C  00        BRK
E72D  33        ???
E72E  00        BRK
E72F  00        BRK
E730  00        BRK
E731  00        BRK
E732  00        BRK
E733  00        BRK
E734  00        BRK
E735  00        BRK
E736  00        BRK
E737  00        BRK
E738  00        BRK
E739  43        ???
E73A  00        BRK
E73B  00        BRK
E73C  00        BRK
E73D  00        BRK
E73E  00        BRK
E73F  00        BRK
E740  00        BRK
E741  00        BRK
E742  00        BRK
E743  00        BRK
E744  00        BRK
E745  53        ???
E746  00        BRK
E747  00        BRK
E748  00        BRK
E749  00        BRK
E74A  00        BRK
E74B  00        BRK
E74C  00        BRK
E74D  00        BRK
E74E  00        BRK
E74F  00        BRK
E750  00        BRK
E751  63        ???
E752  00        BRK
E753  00        BRK
E754  00        BRK
E755  00        BRK
E756  00        BRK
E757  00        BRK
E758  00        BRK
E759  00        BRK
E75A  00        BRK
E75B  00        BRK
E75C  00        BRK
E75D  73        ???
E75E  00        BRK
E75F  00        BRK
E760  00        BRK
E761  00        BRK
E762  00        BRK
E763  00        BRK
E764  00        BRK
E765  00        BRK
E766  00        BRK
E767  00        BRK
E768  00        BRK
E769  83        ???
E76A  00        BRK
E76B  00        BRK
E76C  00        BRK
E76D  00        BRK
E76E  00        BRK
E76F  00        BRK
E770  00        BRK
E771  00        BRK
E772  00        BRK
E773  ff        ???
E774  ff        ???
E775  ff        ???
E776  ff        ???
E777  ff        ???
E778  ff        ???
E779  ff        ???
E77A  ff        ???
E77B  ff        ???
E77C  ff        ???
E77D  ff        ???
E77E  ff        ???
E77F  ff        ???
E780  ff        ???
E781  ff        ???
E782  ff        ???
E783  ff        ???
E784  ff        ???
E785  ff        ???
E786  ff        ???
E787  ff        ???
E788  ff        ???
E789  ff        ???
E78A  ff        ???
E78B  ff        ???
E78C  ff        ???
E78D  ff        ???
E78E  ff        ???
E78F  ff        ???
E790  ff        ???
E791  ff        ???
E792  ff        ???
E793  ff        ???
E794  ff        ???
E795  ff        ???
E796  ff        ???
E797  ff        ???
E798  ff        ???
E799  ff        ???
E79A  ff        ???
E79B  ff        ???
E79C  ff        ???
E79D  ff        ???
E79E  ff        ???
E79F  ff        ???
E7A0  00        BRK
E7A1  00        BRK
E7A2  00        BRK
E7A3  00        BRK
E7A4  00        BRK
E7A5  00        BRK
E7A6  00        BRK
E7A7  00        BRK
E7A8  00        BRK
E7A9  82        ???
E7AA  00        BRK
E7AB  00        BRK
E7AC  00        BRK
E7AD  00        BRK
E7AE  00        BRK
E7AF  00        BRK
E7B0  00        BRK
E7B1  00        BRK
E7B2  00        BRK
E7B3  00        BRK
E7B4  00        BRK
E7B5  72        ???
E7B6  00        BRK
E7B7  00        BRK
E7B8  00        BRK
E7B9  00        BRK
E7BA  00        BRK
E7BB  00        BRK
E7BC  00        BRK
E7BD  00        BRK
E7BE  00        BRK
E7BF  00        BRK
E7C0  00        BRK
E7C1  62        ???
E7C2  00        BRK
E7C3  00        BRK
E7C4  00        BRK
E7C5  00        BRK
E7C6  00        BRK
E7C7  00        BRK
E7C8  00        BRK
E7C9  00        BRK
E7CA  00        BRK
E7CB  00        BRK
E7CC  00        BRK
E7CD  52        ???
E7CE  00        BRK
E7CF  00        BRK
E7D0  00        BRK
E7D1  00        BRK
E7D2  00        BRK
E7D3  00        BRK
E7D4  00        BRK
E7D5  00        BRK
E7D6  00        BRK
E7D7  00        BRK
E7D8  00        BRK
E7D9  42        ???
E7DA  00        BRK
E7DB  00        BRK
E7DC  00        BRK
E7DD  00        BRK
E7DE  00        BRK
E7DF  00        BRK
E7E0  00        BRK
E7E1  00        BRK
E7E2  00        BRK
E7E3  00        BRK
E7E4  00        BRK
E7E5  32        ???
E7E6  00        BRK
E7E7  00        BRK
E7E8  00        BRK
E7E9  00        BRK
E7EA  00        BRK
E7EB  00        BRK
E7EC  00        BRK
E7ED  00        BRK
E7EE  00        BRK
E7EF  24 2c     BIT $2c
E7F1  22        ???
E7F2  2d 26 00  AND $0026
E7F5  00        BRK
E7F6  00        BRK
E7F7  00        BRK
E7F8  00        BRK
E7F9  00        BRK
E7FA  00        BRK
E7FB  28        PLP
E7FC  14        ???
E7FD  12        ???
E7FE  16 2a     ASL $2a,X
E800  90 80     BCC $e782
E802  70 60     BVS $e864
E804  50 40     BVC $e846
E806  30 20     BMI $e828
E808  10 ad     BPL $e7b7
E80A  20 e5 bd  JSR $bde5
E80D  a5 c3     LDA $c3
E80F  f0 05     BEQ $e816
E811  a9 04     LDA #$04
E813  20 83 e8  JSR $e883
E816  a5 c7     LDA $c7
E818  29 30     AND #$30
E81A  aa        TAX
E81B  b5 84     LDA $84,X
E81D  30 2c     BMI $e84b
E81F  20 01 87  JSR $8701
E822  ad 00 05  LDA $0500
E825  f0 24     BEQ $e84b
E827  a5 c7     LDA $c7
E829  29 30     AND #$30
E82B  aa        TAX
E82C  20 55 85  JSR $8555
E82F  90 19     BCC $e84a
E831  a9 00     LDA #$00
E833  20 83 e8  JSR $e883
E836  20 92 bd  JSR $bd92
E839  a9 13     LDA #$13
E83B  18        CLC
E83C  6d 88 03  ADC $0388
E83F  c9 77     CMP #$77
E841  90 07     BCC $e84a
E843  20 71 da  JSR $da71
E846  b0 c2     BCS $e80a
E848  60        RTS
E849  20 60 a5  JSR $a560
E84C  c7        ???
E84D  29 f3     AND #$f3
E84F  85 c7     STA $c7
E851  a5 c7     LDA $c7
E853  29 30     AND #$30
E855  4a        LSR A
E856  4a        LSR A
E857  05 c7     ORA $c7
E859  85 c7     STA $c7
E85B  a9 03     LDA #$03
E85D  20 83 e8  JSR $e883
E860  20 bb bd  JSR $bdbb
E863  60        RTS
E864  4c 48 8a  JMP $8a48
E867  48        PHA
E868  a2 04     LDX #$04
E86A  a9 08     LDA #$08
E86C  9d 00 40  STA $4000,X
E86F  a9 cc     LDA #$cc
E871  9d 01 40  STA $4001,X
E874  a9 d6     LDA #$d6
E876  9d 02 40  STA $4002,X
E879  a9 c0     LDA #$c0
E87B  9d 03 40  STA $4003,X
E87E  68        PLA
E87F  aa        TAX
E880  68        PLA
E881  60        RTS
E882  6c 48 8a  JMP ($8a48)
E885  48        PHA
E886  98        TYA
E887  48        PHA
E888  ba        TSX
E889  bd 03 01  LDA $0103,X
E88C  0a        ASL A
E88D  0a        ASL A
E88E  a8        TAY
E88F  a2 04     LDX #$04
E891  b9 af e8  LDA $e8af,Y
E894  9d 00 40  STA $4000,X
E897  b9 b0 e8  LDA $e8b0,Y
E89A  9d 01 40  STA $4001,X
E89D  b9 b1 e8  LDA $e8b1,Y
E8A0  9d 02 40  STA $4002,X
E8A3  b9 b2 e8  LDA $e8b2,Y
E8A6  9d 03 40  STA $4003,X
E8A9  68        PLA
E8AA  a8        TAY
E8AB  68        PLA
E8AC  aa        TAX
E8AD  68        PLA
E8AE  60        RTS
E8AF  4f        ???
E8B0  8f        ???
E8B1  8f        ???
E8B2  c0 08     CPY #$08
E8B4  cc d6 c0  CPY $c0d6
E8B7  08        PHP
E8B8  c4 d6     CPY $d6
E8BA  c0 5f     CPY #$5f
E8BC  e3        ???
E8BD  40        RTI
E8BE  c0 5f     CPY #$5f
E8C0  b1 6b     LDA ($6b),Y
E8C2  f8        SED
E8C3  28        PLP
E8C4  00        BRK
E8C5  6b        ???
E8C6  c0 8f     CPY #$8f
E8C8  00        BRK
E8C9  6b        ???
E8CA  20 a9 05  JSR $05a9
E8CD  8d 8c 00  STA $008c
E8D0  a9 00     LDA #$00
E8D2  8d 8e 00  STA $008e
E8D5  ac 8f 00  LDY $008f
E8D8  a2 00     LDX #$00
E8DA  b9 d5 ea  LDA $ead5,Y
E8DD  9d 60 03  STA $0360,X
E8E0  c8        INY
E8E1  e8        INX
E8E2  e0 10     CPX #$10
E8E4  d0 f4     BNE $e8da
E8E6  a9 00     LDA #$00
E8E8  8d 8d 00  STA $008d
E8EB  8d 62 03  STA $0362
E8EE  8d 63 03  STA $0363
E8F1  8d 66 03  STA $0366
E8F4  8d 67 03  STA $0367
E8F7  8d 6a 03  STA $036a
E8FA  8d 6b 03  STA $036b
E8FD  8d 6e 03  STA $036e
E900  8d 6f 03  STA $036f
E903  60        RTS
E904  4c 20 4d  JMP $4d20
E907  55 04     EOR $04,X
E909  60        RTS
E90A  78        SEI
E90B  ac 62 03  LDY $0362
E90E  d0 03     BNE $e913
E910  20 cb e8  JSR $e8cb
E913  ad 8d 00  LDA $008d
E916  d0 17     BNE $e92f
E918  ad 8c 00  LDA $008c
E91B  8d 8d 00  STA $008d
E91E  a2 04     LDX #$04
E920  a2 08     LDX #$08
E922  20 3f e9  JSR $e93f
E925  a2 0c     LDX #$0c
E927  20 3f e9  JSR $e93f
E92A  a2 00     LDX #$00
E92C  20 3f e9  JSR $e93f
E92F  ce 8d 00  DEC $008d
E932  ac 62 03  LDY $0362
E935  88        DEY
E936  b1 8a     LDA ($8a),Y
E938  d0 03     BNE $e93d
E93A  8d 62 03  STA $0362
E93D  60        RTS
E93E  a5 8a     LDA $8a
E940  18        CLC
E941  6d 8f 00  ADC $008f
E944  a8        TAY
E945  b9 95 ea  LDA $ea95,Y
E948  8d 8a 00  STA $008a
E94B  b9 96 ea  LDA $ea96,Y
E94E  8d 8b 00  STA $008b
E951  b9 97 ea  LDA $ea97,Y
E954  8d 88 00  STA $0088
E957  b9 98 ea  LDA $ea98,Y
E95A  8d 89 00  STA $0089
E95D  bd 63 03  LDA $0363,X
E960  d0 22     BNE $e984
E962  bc 62 03  LDY $0362,X
E965  fe 62 03  INC $0362,X
E968  b1 8a     LDA ($8a),Y
E96A  9d 63 03  STA $0363,X
E96D  b1 88     LDA ($88),Y
E96F  f0 0f     BEQ $e980
E971  e0 0c     CPX #$0c
E973  f0 0b     BEQ $e980
E975  18        CLC
E976  6d 8e 00  ADC $008e
E979  e0 08     CPX #$08
E97B  d0 03     BNE $e980
E97D  18        CLC
E97E  69 f4     ADC #$f4
E980  a8        TAY
E981  20 d6 e9  JSR $e9d6
E984  de 63 03  DEC $0363,X
E987  60        RTS
E988  cc ad 45  CPY $45ad
E98B  04        ???
E98C  d0 46     BNE $e9d4
E98E  ad 5c 04  LDA $045c
E991  f0 02     BEQ $e995
E993  60        RTS
E994  e6 a0     INC $a0
E996  f6 20     INC $20,X
E998  d1 e9     CMP ($e9),Y
E99A  49 76     EOR #$76
E99C  8d d1 00  STA $00d1
E99F  8c d0 00  STY $00d0
E9A2  a0 00     LDY #$00
E9A4  b1 d0     LDA ($d0),Y
E9A6  18        CLC
E9A7  69 9e     ADC #$9e
E9A9  4d 45 04  EOR $0445
E9AC  8d 45 04  STA $0445
E9AF  c8        INY
E9B0  b1 d0     LDA ($d0),Y
E9B2  49 4f     EOR #$4f
E9B4  38        SEC
E9B5  ed 5c 04  SBC $045c
E9B8  8d 5c 04  STA $045c
E9BB  ee d0 00  INC $00d0
E9BE  ee d0 00  INC $00d0
E9C1  d0 df     BNE $e9a2
E9C3  ee d1 00  INC $00d1
E9C6  ad d1 00  LDA $00d1
E9C9  c9 ff     CMP #$ff
E9CB  d0 d5     BNE $e9a2
E9CD  4c 0b dc  JMP $dc0b
E9D0  20 98 a0  JSR $a098
E9D3  00        BRK
E9D4  60        RTS
E9D5  85 48     STA $48
E9D7  bd 60 03  LDA $0360,X
E9DA  9d 00 40  STA $4000,X
E9DD  bd 61 03  LDA $0361,X
E9E0  9d 01 40  STA $4001,X
E9E3  e0 0c     CPX #$0c
E9E5  f0 18     BEQ $e9ff
E9E7  b9 0b ea  LDA $ea0b,Y
E9EA  9d 02 40  STA $4002,X
E9ED  b9 70 ea  LDA $ea70,Y
E9F0  c0 25     CPY #$25
E9F2  90 02     BCC $e9f6
E9F4  a9 00     LDA #$00
E9F6  09 c0     ORA #$c0
E9F8  9d 03 40  STA $4003,X
E9FB  68        PLA
E9FC  60        RTS
E9FD  88        DEY
E9FE  49 98     EOR #$98
EA00  9d 02 40  STA $4002,X
EA03  a9 00     LDA #$00
EA05  9d 03 40  STA $4003,X
EA08  68        PLA
EA09  60        RTS
EA0A  b1 00     LDA ($00),Y
EA0C  f4        ???
EA0D  82        ???
EA0E  16 b0     ASL $b0,X
EA10  50 f5     BVC $ea07
EA12  a0 4f     LDY #$4f
EA14  03        ???
EA15  bb        ???
EA16  77        ???
EA17  36 fa     ROL $fa,X
EA19  c1 8b     CMP ($8b,X)
EA1B  58        CLI
EA1C  28        PLP
EA1D  fb        ???
EA1E  d0 a7     BNE $e9c7
EA20  81 5d     STA ($5d,X)
EA22  3b        ???
EA23  1b        ???
EA24  fd e0 c5  SBC $c5e0,X
EA27  ac 94 7d  LDY $7d94
EA2A  68        PLA
EA2B  54        ???
EA2C  41 2f     EOR ($2f,X)
EA2E  1e 0e fe  ASL $fe0e,X
EA31  f0 e3     BEQ $ea16
EA33  d6 ca     DEC $ca,X
EA35  bf        ???
EA36  b4 aa     LDY $aa,X
EA38  a0 97     LDY #$97
EA3A  8f        ???
EA3B  87        ???
EA3C  7f        ???
EA3D  78        SEI
EA3E  71 6b     ADC ($6b),Y
EA40  65 5f     ADC $5f
EA42  5a        ???
EA43  55 50     EOR $50,X
EA45  4c 47 43  JMP $4347
EA48  40        RTI
EA49  3c        ???
EA4A  39 36 32  AND $3236,Y
EA4D  30 2d     BMI $ea7c
EA4F  2a        ROL A
EA50  28        PLP
EA51  26 24     ROL $24
EA53  22        ???
EA54  20 1e 1c  JSR $1c1e
EA57  1b        ???
EA58  19 18 16  ORA $1618,Y
EA5B  15 14     ORA $14,X
EA5D  13        ???
EA5E  12        ???
EA5F  11 10     ORA ($10),Y
EA61  0f        ???
EA62  0e 0d 0d  ASL $0d0d
EA65  0c        ???
EA66  0b        ???
EA67  0b        ???
EA68  0a        ASL A
EA69  09 09     ORA #$09
EA6B  08        PHP
EA6C  08        PHP
EA6D  08        PHP
EA6E  07        ???
EA6F  07        ???
EA70  00        BRK
EA71  07        ???
EA72  07        ???
EA73  07        ???
EA74  06 06     ASL $06
EA76  05 05     ORA $05
EA78  05 05     ORA $05
EA7A  04        ???
EA7B  04        ???
EA7C  04        ???
EA7D  03        ???
EA7E  03        ???
EA7F  03        ???
EA80  03        ???
EA81  03        ???
EA82  02        ???
EA83  02        ???
EA84  02        ???
EA85  02        ???
EA86  02        ???
EA87  02        ???
EA88  02        ???
EA89  01 01     ORA ($01,X)
EA8B  01 01     ORA ($01,X)
EA8D  01 01     ORA ($01,X)
EA8F  01 01     ORA ($01,X)
EA91  01 01     ORA ($01,X)
EA93  01 01     ORA ($01,X)
EA95  64        ???
EA96  eb        ???
EA97  15 eb     ORA $eb,X
EA99  b8        CLV
EA9A  ec b4 ec  CPX $ecb4
EA9D  34        ???
EA9E  ec b4 eb  CPX $ebb4
EAA1  3c        ???
EAA2  ed bc ec  SBC $ecbc
EAA5  18        CLC
EAA6  ee df ed  INC $eddf
EAA9  12        ???
EAAA  f0 12     BEQ $eabe
EAAC  f0 32     BEQ $eae0
EAAE  ef        ???
EAAF  52        ???
EAB0  ee 32 ef  INC $ef32
EAB3  12        ???
EAB4  f0 a0     BEQ $ea56
EAB6  f0 92     BEQ $ea4a
EAB8  f0 c6     BEQ $ea80
EABA  f0 b9     BEQ $ea75
EABC  f0 b4     BEQ $ea72
EABE  f0 af     BEQ $ea6f
EAC0  f0 d8     BEQ $ea9a
EAC2  f0 d3     BEQ $ea97
EAC4  f0 ed     BEQ $eab3
EAC6  f0 dd     BEQ $eaa5
EAC8  f0 0b     BEQ $ead5
EACA  f1 08     SBC ($08),Y
EACC  f1 03     SBC ($03),Y
EACE  f1 fe     SBC ($fe),Y
EAD0  f0 13     BEQ $eae5
EAD2  f1 0e     SBC ($0e),Y
EAD4  f1 43     SBC ($43),Y
EAD6  00        BRK
EAD7  00        BRK
EAD8  00        BRK
EAD9  4f        ???
EADA  00        BRK
EADB  00        BRK
EADC  00        BRK
EADD  42        ???
EADE  00        BRK
EADF  00        BRK
EAE0  00        BRK
EAE1  00        BRK
EAE2  00        BRK
EAE3  00        BRK
EAE4  00        BRK
EAE5  43        ???
EAE6  00        BRK
EAE7  00        BRK
EAE8  00        BRK
EAE9  4f        ???
EAEA  00        BRK
EAEB  00        BRK
EAEC  00        BRK
EAED  82        ???
EAEE  00        BRK
EAEF  00        BRK
EAF0  00        BRK
EAF1  00        BRK
EAF2  00        BRK
EAF3  00        BRK
EAF4  00        BRK
EAF5  43        ???
EAF6  00        BRK
EAF7  00        BRK
EAF8  00        BRK
EAF9  4f        ???
EAFA  00        BRK
EAFB  00        BRK
EAFC  00        BRK
EAFD  42        ???
EAFE  00        BRK
EAFF  00        BRK
EB00  00        BRK
EB01  00        BRK
EB02  00        BRK
EB03  00        BRK
EB04  00        BRK
EB05  43        ???
EB06  00        BRK
EB07  00        BRK
EB08  00        BRK
EB09  4f        ???
EB0A  00        BRK
EB0B  00        BRK
EB0C  00        BRK
EB0D  42        ???
EB0E  00        BRK
EB0F  00        BRK
EB10  00        BRK
EB11  00        BRK
EB12  00        BRK
EB13  00        BRK
EB14  00        BRK
EB15  38        SEC
EB16  2f        ???
EB17  2f        ???
EB18  38        SEC
EB19  36 34     ROL $34,X
EB1B  38        SEC
EB1C  36 38     ROL $38,X
EB1E  36 34     ROL $34,X
EB20  31 2f     AND ($2f),Y
EB22  34        ???
EB23  31 2f     AND ($2f),Y
EB25  31 2f     AND ($2f),Y
EB27  2c 2f 2a  BIT $2a2f
EB2A  38        SEC
EB2B  2f        ???
EB2C  2f        ???
EB2D  38        SEC
EB2E  36 34     ROL $34,X
EB30  38        SEC
EB31  36 34     ROL $34,X
EB33  31 00     AND ($00),Y
EB35  31 34     AND ($34),Y
EB37  2f        ???
EB38  31 2f     AND ($2f),Y
EB3A  31 2f     AND ($2f),Y
EB3C  2c 2a 28  BIT $282a
EB3F  34        ???
EB40  36 34     ROL $34,X
EB42  31 34     AND ($34),Y
EB44  36 38     ROL $38,X
EB46  36 00     ROL $00,X
EB48  38        SEC
EB49  36 34     ROL $34,X
EB4B  36 34     ROL $34,X
EB4D  31 31     AND ($31),Y
EB4F  34        ???
EB50  36 38     ROL $38,X
EB52  2f        ???
EB53  2f        ???
EB54  38        SEC
EB55  36 34     ROL $34,X
EB57  38        SEC
EB58  36 34     ROL $34,X
EB5A  31 00     AND ($00),Y
EB5C  31 34     AND ($34),Y
EB5E  33        ???
EB5F  31 2f     AND ($2f),Y
EB61  31 33     AND ($33),Y
EB63  34        ???
EB64  0c        ???
EB65  04        ???
EB66  04        ???
EB67  04        ???
EB68  04        ???
EB69  04        ???
EB6A  0c        ???
EB6B  01 01     ORA ($01,X)
EB6D  02        ???
EB6E  0c        ???
EB6F  04        ???
EB70  0c        ???
EB71  04        ???
EB72  04        ???
EB73  08        PHP
EB74  02        ???
EB75  02        ???
EB76  0c        ???
EB77  04        ???
EB78  10 0c     BPL $eb86
EB7A  04        ???
EB7B  04        ???
EB7C  04        ???
EB7D  04        ???
EB7E  04        ???
EB7F  0c        ???
EB80  02        ???
EB81  02        ???
EB82  10 08     BPL $eb8c
EB84  04        ???
EB85  04        ???
EB86  0c        ???
EB87  04        ???
EB88  08        PHP
EB89  02        ???
EB8A  02        ???
EB8B  02        ???
EB8C  02        ???
EB8D  10 0c     BPL $eb9b
EB8F  02        ???
EB90  02        ???
EB91  08        PHP
EB92  08        PHP
EB93  0c        ???
EB94  04        ???
EB95  10 08     BPL $eb9f
EB97  04        ???
EB98  04        ???
EB99  0c        ???
EB9A  02        ???
EB9B  02        ???
EB9C  08        PHP
EB9D  04        ???
EB9E  04        ???
EB9F  10 0c     BPL $ebad
EBA1  04        ???
EBA2  04        ???
EBA3  04        ???
EBA4  04        ???
EBA5  04        ???
EBA6  0c        ???
EBA7  02        ???
EBA8  02        ???
EBA9  10 08     BPL $ebb3
EBAB  04        ???
EBAC  04        ???
EBAD  0c        ???
EBAE  04        ???
EBAF  08        PHP
EBB0  04        ???
EBB1  04        ???
EBB2  10 00     BPL $ebb4
EBB4  28        PLP
EBB5  2f        ???
EBB6  34        ???
EBB7  2f        ???
EBB8  28        PLP
EBB9  2f        ???
EBBA  34        ???
EBBB  2f        ???
EBBC  25 2c     AND $2c
EBBE  31 2c     AND ($2c),Y
EBC0  25 2c     AND $2c
EBC2  31 2c     AND ($2c),Y
EBC4  28        PLP
EBC5  2f        ???
EBC6  34        ???
EBC7  2f        ???
EBC8  28        PLP
EBC9  2f        ???
EBCA  34        ???
EBCB  2f        ???
EBCC  25 2c     AND $2c
EBCE  31 2c     AND ($2c),Y
EBD0  23        ???
EBD1  2a        ROL A
EBD2  2f        ???
EBD3  2a        ROL A
EBD4  28        PLP
EBD5  2f        ???
EBD6  34        ???
EBD7  2f        ???
EBD8  28        PLP
EBD9  2f        ???
EBDA  34        ???
EBDB  2f        ???
EBDC  25 2c     AND $2c
EBDE  31 2c     AND ($2c),Y
EBE0  25 2c     AND $2c
EBE2  31 2c     AND ($2c),Y
EBE4  21 28     AND ($28,X)
EBE6  2d 28 23  AND $2328
EBE9  2a        ROL A
EBEA  2f        ???
EBEB  2a        ROL A
EBEC  23        ???
EBED  2a        ROL A
EBEE  2f        ???
EBEF  2a        ROL A
EBF0  28        PLP
EBF1  2f        ???
EBF2  34        ???
EBF3  2f        ???
EBF4  25 2c     AND $2c
EBF6  31 2c     AND ($2c),Y
EBF8  25 2c     AND $2c
EBFA  31 2c     AND ($2c),Y
EBFC  2a        ROL A
EBFD  31 36     AND ($36),Y
EBFF  31 2a     AND ($2a),Y
EC01  31 36     AND ($36),Y
EC03  31 2c     AND ($2c),Y
EC05  33        ???
EC06  38        SEC
EC07  33        ???
EC08  25 2c     AND $2c
EC0A  31 2c     AND ($2c),Y
EC0C  25 2c     AND $2c
EC0E  31 2c     AND ($2c),Y
EC10  23        ???
EC11  2a        ROL A
EC12  2f        ???
EC13  2a        ROL A
EC14  28        PLP
EC15  2f        ???
EC16  34        ???
EC17  2f        ???
EC18  28        PLP
EC19  2f        ???
EC1A  34        ???
EC1B  2f        ???
EC1C  25 2c     AND $2c
EC1E  31 2c     AND ($2c),Y
EC20  25 2c     AND $2c
EC22  31 2c     AND ($2c),Y
EC24  21 28     AND ($28,X)
EC26  2d 28 23  AND $2328
EC29  2a        ROL A
EC2A  2f        ???
EC2B  2a        ROL A
EC2C  23        ???
EC2D  2a        ROL A
EC2E  2f        ???
EC2F  2a        ROL A
EC30  28        PLP
EC31  2f        ???
EC32  34        ???
EC33  2f        ???
EC34  04        ???
EC35  04        ???
EC36  04        ???
EC37  04        ???
EC38  04        ???
EC39  04        ???
EC3A  04        ???
EC3B  04        ???
EC3C  04        ???
EC3D  04        ???
EC3E  04        ???
EC3F  04        ???
EC40  04        ???
EC41  04        ???
EC42  04        ???
EC43  04        ???
EC44  04        ???
EC45  04        ???
EC46  04        ???
EC47  04        ???
EC48  04        ???
EC49  04        ???
EC4A  04        ???
EC4B  04        ???
EC4C  04        ???
EC4D  04        ???
EC4E  04        ???
EC4F  04        ???
EC50  04        ???
EC51  04        ???
EC52  04        ???
EC53  04        ???
EC54  04        ???
EC55  04        ???
EC56  04        ???
EC57  04        ???
EC58  04        ???
EC59  04        ???
EC5A  04        ???
EC5B  04        ???
EC5C  04        ???
EC5D  04        ???
EC5E  04        ???
EC5F  04        ???
EC60  04        ???
EC61  04        ???
EC62  04        ???
EC63  04        ???
EC64  04        ???
EC65  04        ???
EC66  04        ???
EC67  04        ???
EC68  04        ???
EC69  04        ???
EC6A  04        ???
EC6B  04        ???
EC6C  04        ???
EC6D  04        ???
EC6E  04        ???
EC6F  04        ???
EC70  04        ???
EC71  04        ???
EC72  04        ???
EC73  04        ???
EC74  04        ???
EC75  04        ???
EC76  04        ???
EC77  04        ???
EC78  04        ???
EC79  04        ???
EC7A  04        ???
EC7B  04        ???
EC7C  04        ???
EC7D  04        ???
EC7E  04        ???
EC7F  04        ???
EC80  04        ???
EC81  04        ???
EC82  04        ???
EC83  04        ???
EC84  04        ???
EC85  04        ???
EC86  04        ???
EC87  04        ???
EC88  04        ???
EC89  04        ???
EC8A  04        ???
EC8B  04        ???
EC8C  04        ???
EC8D  04        ???
EC8E  04        ???
EC8F  04        ???
EC90  04        ???
EC91  04        ???
EC92  04        ???
EC93  04        ???
EC94  04        ???
EC95  04        ???
EC96  04        ???
EC97  04        ???
EC98  04        ???
EC99  04        ???
EC9A  04        ???
EC9B  04        ???
EC9C  04        ???
EC9D  04        ???
EC9E  04        ???
EC9F  04        ???
ECA0  04        ???
ECA1  04        ???
ECA2  04        ???
ECA3  04        ???
ECA4  04        ???
ECA5  04        ???
ECA6  04        ???
ECA7  04        ???
ECA8  04        ???
ECA9  04        ???
ECAA  04        ???
ECAB  04        ???
ECAC  04        ???
ECAD  04        ???
ECAE  04        ???
ECAF  04        ???
ECB0  04        ???
ECB1  04        ???
ECB2  04        ???
ECB3  04        ???
ECB4  00        BRK
ECB5  00        BRK
ECB6  00        BRK
ECB7  00        BRK
ECB8  20 20 20  JSR $2020
ECBB  20 00 00  JSR $0000
ECBE  03        ???
ECBF  00        BRK
ECC0  00        BRK
ECC1  00        BRK
ECC2  03        ???
ECC3  00        BRK
ECC4  00        BRK
ECC5  00        BRK
ECC6  03        ???
ECC7  00        BRK
ECC8  00        BRK
ECC9  00        BRK
ECCA  03        ???
ECCB  00        BRK
ECCC  00        BRK
ECCD  00        BRK
ECCE  03        ???
ECCF  00        BRK
ECD0  00        BRK
ECD1  00        BRK
ECD2  03        ???
ECD3  00        BRK
ECD4  00        BRK
ECD5  00        BRK
ECD6  03        ???
ECD7  00        BRK
ECD8  00        BRK
ECD9  00        BRK
ECDA  03        ???
ECDB  00        BRK
ECDC  00        BRK
ECDD  00        BRK
ECDE  03        ???
ECDF  00        BRK
ECE0  00        BRK
ECE1  00        BRK
ECE2  03        ???
ECE3  00        BRK
ECE4  00        BRK
ECE5  00        BRK
ECE6  03        ???
ECE7  00        BRK
ECE8  00        BRK
ECE9  00        BRK
ECEA  03        ???
ECEB  00        BRK
ECEC  00        BRK
ECED  00        BRK
ECEE  03        ???
ECEF  00        BRK
ECF0  00        BRK
ECF1  00        BRK
ECF2  03        ???
ECF3  00        BRK
ECF4  00        BRK
ECF5  00        BRK
ECF6  03        ???
ECF7  00        BRK
ECF8  00        BRK
ECF9  00        BRK
ECFA  03        ???
ECFB  00        BRK
ECFC  00        BRK
ECFD  00        BRK
ECFE  03        ???
ECFF  00        BRK
ED00  00        BRK
ED01  00        BRK
ED02  03        ???
ED03  00        BRK
ED04  00        BRK
ED05  00        BRK
ED06  03        ???
ED07  00        BRK
ED08  00        BRK
ED09  00        BRK
ED0A  03        ???
ED0B  00        BRK
ED0C  00        BRK
ED0D  00        BRK
ED0E  03        ???
ED0F  00        BRK
ED10  00        BRK
ED11  00        BRK
ED12  03        ???
ED13  00        BRK
ED14  00        BRK
ED15  00        BRK
ED16  03        ???
ED17  00        BRK
ED18  00        BRK
ED19  00        BRK
ED1A  03        ???
ED1B  00        BRK
ED1C  00        BRK
ED1D  00        BRK
ED1E  03        ???
ED1F  00        BRK
ED20  00        BRK
ED21  00        BRK
ED22  03        ???
ED23  00        BRK
ED24  00        BRK
ED25  00        BRK
ED26  03        ???
ED27  00        BRK
ED28  00        BRK
ED29  00        BRK
ED2A  03        ???
ED2B  00        BRK
ED2C  00        BRK
ED2D  00        BRK
ED2E  03        ???
ED2F  00        BRK
ED30  00        BRK
ED31  00        BRK
ED32  03        ???
ED33  00        BRK
ED34  00        BRK
ED35  00        BRK
ED36  03        ???
ED37  00        BRK
ED38  00        BRK
ED39  00        BRK
ED3A  03        ???
ED3B  00        BRK
ED3C  04        ???
ED3D  04        ???
ED3E  04        ???
ED3F  04        ???
ED40  04        ???
ED41  04        ???
ED42  04        ???
ED43  04        ???
ED44  04        ???
ED45  04        ???
ED46  04        ???
ED47  04        ???
ED48  04        ???
ED49  04        ???
ED4A  04        ???
ED4B  04        ???
ED4C  04        ???
ED4D  04        ???
ED4E  04        ???
ED4F  04        ???
ED50  04        ???
ED51  04        ???
ED52  04        ???
ED53  04        ???
ED54  04        ???
ED55  04        ???
ED56  04        ???
ED57  04        ???
ED58  04        ???
ED59  04        ???
ED5A  04        ???
ED5B  04        ???
ED5C  04        ???
ED5D  04        ???
ED5E  04        ???
ED5F  04        ???
ED60  04        ???
ED61  04        ???
ED62  04        ???
ED63  04        ???
ED64  04        ???
ED65  04        ???
ED66  04        ???
ED67  04        ???
ED68  04        ???
ED69  04        ???
ED6A  04        ???
ED6B  04        ???
ED6C  04        ???
ED6D  04        ???
ED6E  04        ???
ED6F  04        ???
ED70  04        ???
ED71  04        ???
ED72  04        ???
ED73  04        ???
ED74  04        ???
ED75  04        ???
ED76  04        ???
ED77  04        ???
ED78  04        ???
ED79  04        ???
ED7A  04        ???
ED7B  04        ???
ED7C  04        ???
ED7D  04        ???
ED7E  04        ???
ED7F  04        ???
ED80  04        ???
ED81  04        ???
ED82  04        ???
ED83  04        ???
ED84  04        ???
ED85  04        ???
ED86  04        ???
ED87  04        ???
ED88  04        ???
ED89  04        ???
ED8A  04        ???
ED8B  04        ???
ED8C  04        ???
ED8D  04        ???
ED8E  04        ???
ED8F  04        ???
ED90  04        ???
ED91  04        ???
ED92  04        ???
ED93  04        ???
ED94  04        ???
ED95  04        ???
ED96  04        ???
ED97  04        ???
ED98  04        ???
ED99  04        ???
ED9A  04        ???
ED9B  04        ???
ED9C  04        ???
ED9D  04        ???
ED9E  04        ???
ED9F  04        ???
EDA0  04        ???
EDA1  04        ???
EDA2  04        ???
EDA3  04        ???
EDA4  04        ???
EDA5  04        ???
EDA6  04        ???
EDA7  04        ???
EDA8  04        ???
EDA9  04        ???
EDAA  04        ???
EDAB  04        ???
EDAC  04        ???
EDAD  04        ???
EDAE  04        ???
EDAF  04        ???
EDB0  04        ???
EDB1  04        ???
EDB2  04        ???
EDB3  04        ???
EDB4  04        ???
EDB5  04        ???
EDB6  04        ???
EDB7  04        ???
EDB8  04        ???
EDB9  04        ???
EDBA  04        ???
EDBB  04        ???
EDBC  6c d0 00  JMP ($00d0)
EDBF  14        ???
EDC0  bd 30 bc  LDA $bc30,X
EDC3  fc        ???
EDC4  30 bf     BMI $ed85
EDC6  fc        ???
EDC7  30 be     BMI $ed87
EDC9  fc        ???
EDCA  30 bd     BMI $ed89
EDCC  fc        ???
EDCD  14        ???
EDCE  42        ???
EDCF  30 be     BMI $ed8f
EDD1  fc        ???
EDD2  30 bd     BMI $ed91
EDD4  fc        ???
EDD5  30 bd     BMI $ed94
EDD7  fc        ???
EDD8  30 bd     BMI $ed97
EDDA  fc        ???
EDDB  10 bd     BPL $ed9a
EDDD  fc        ???
EDDE  dd 00 2a  CMP $2a00,X
EDE1  32        ???
EDE2  31 2f     AND ($2f),Y
EDE4  2a        ROL A
EDE5  2f        ???
EDE6  2d 2d 2b  AND $2b2d
EDE9  28        PLP
EDEA  2a        ROL A
EDEB  2b        ???
EDEC  2d 2f 32  AND $322f
EDEF  31 2b     AND ($2b),Y
EDF1  2a        ROL A
EDF2  2a        ROL A
EDF3  2b        ???
EDF4  2d 2f 2f  AND $2f2f
EDF7  31 32     AND ($32),Y
EDF9  34        ???
EDFA  36 33     ROL $33,X
EDFC  2a        ROL A
EDFD  33        ???
EDFE  31 2f     AND ($2f),Y
EE00  2e 2f 31  ROL $312f
EE03  2a        ROL A
EE04  2c 2e 2f  BIT $2f2e
EE07  2c 2a 28  BIT $282a
EE0A  31 33     AND ($33),Y
EE0C  34        ???
EE0D  34        ???
EE0E  33        ???
EE0F  31 2f     AND ($2f),Y
EE11  31 31     AND ($31),Y
EE13  31 2a     AND ($2a),Y
EE15  2e 31 2f  ROL $2f31
EE18  14        ???
EE19  04        ???
EE1A  04        ???
EE1B  04        ???
EE1C  14        ???
EE1D  04        ???
EE1E  04        ???
EE1F  04        ???
EE20  08        PHP
EE21  0c        ???
EE22  04        ???
EE23  04        ???
EE24  04        ???
EE25  14        ???
EE26  04        ???
EE27  04        ???
EE28  04        ???
EE29  08        PHP
EE2A  0c        ???
EE2B  04        ???
EE2C  04        ???
EE2D  04        ???
EE2E  14        ???
EE2F  04        ???
EE30  04        ???
EE31  04        ???
EE32  20 20 0c  JSR $0c20
EE35  04        ???
EE36  04        ???
EE37  04        ???
EE38  08        PHP
EE39  04        ???
EE3A  04        ???
EE3B  08        PHP
EE3C  10 0c     BPL $ee4a
EE3E  04        ???
EE3F  04        ???
EE40  04        ???
EE41  04        ???
EE42  04        ???
EE43  08        PHP
EE44  18        CLC
EE45  0c        ???
EE46  04        ???
EE47  04        ???
EE48  04        ???
EE49  08        PHP
EE4A  0c        ???
EE4B  04        ???
EE4C  04        ???
EE4D  04        ???
EE4E  04        ???
EE4F  04        ???
EE50  20 00 23  JSR $2300
EE53  26 2a     ROL $2a
EE55  26 23     ROL $23
EE57  26 2a     ROL $2a
EE59  26 23     ROL $23
EE5B  26 2a     ROL $2a
EE5D  26 23     ROL $23
EE5F  26 2a     ROL $2a
EE61  26 23     ROL $23
EE63  28        PLP
EE64  2b        ???
EE65  28        PLP
EE66  23        ???
EE67  28        PLP
EE68  2b        ???
EE69  28        PLP
EE6A  21 25     AND ($25,X)
EE6C  2b        ???
EE6D  25 21     AND $21
EE6F  25 2b     AND $2b
EE71  25 21     AND $21
EE73  26 2a     ROL $2a
EE75  26 21     ROL $21
EE77  26 2a     ROL $2a
EE79  26 23     ROL $23
EE7B  26 2b     ROL $2b
EE7D  26 23     ROL $23
EE7F  26 2b     ROL $2b
EE81  26 23     ROL $23
EE83  28        PLP
EE84  2a        ROL A
EE85  28        PLP
EE86  23        ???
EE87  28        PLP
EE88  2a        ROL A
EE89  28        PLP
EE8A  21 28     AND ($28,X)
EE8C  2a        ROL A
EE8D  28        PLP
EE8E  21 28     AND ($28,X)
EE90  2a        ROL A
EE91  28        PLP
EE92  23        ???
EE93  27        ???
EE94  2a        ROL A
EE95  27        ???
EE96  23        ???
EE97  27        ???
EE98  2a        ROL A
EE99  27        ???
EE9A  25 28     AND $28
EE9C  2a        ROL A
EE9D  28        PLP
EE9E  25 28     AND $28
EEA0  2a        ROL A
EEA1  28        PLP
EEA2  23        ???
EEA3  27        ???
EEA4  2c 27 23  BIT $2327
EEA7  27        ???
EEA8  2c 27 25  BIT $2527
EEAB  27        ???
EEAC  2c 27 25  BIT $2527
EEAF  27        ???
EEB0  2b        ???
EEB1  27        ???
EEB2  23        ???
EEB3  28        PLP
EEB4  2c 28 23  BIT $2328
EEB7  28        PLP
EEB8  2c 28 22  BIT $2228
EEBB  28        PLP
EEBC  2a        ROL A
EEBD  28        PLP
EEBE  22        ???
EEBF  28        PLP
EEC0  2a        ROL A
EEC1  28        PLP
EEC2  23        ???
EEC3  27        ???
EEC4  2a        ROL A
EEC5  27        ???
EEC6  23        ???
EEC7  27        ???
EEC8  2a        ROL A
EEC9  27        ???
EECA  22        ???
EECB  28        PLP
EECC  2a        ROL A
EECD  28        PLP
EECE  22        ???
EECF  28        PLP
EED0  2a        ROL A
EED1  28        PLP
EED2  23        ???
EED3  27        ???
EED4  2a        ROL A
EED5  27        ???
EED6  23        ???
EED7  27        ???
EED8  2a        ROL A
EED9  27        ???
EEDA  22        ???
EEDB  27        ???
EEDC  2a        ROL A
EEDD  27        ???
EEDE  22        ???
EEDF  27        ???
EEE0  2a        ROL A
EEE1  27        ???
EEE2  23        ???
EEE3  27        ???
EEE4  2a        ROL A
EEE5  27        ???
EEE6  23        ???
EEE7  27        ???
EEE8  2a        ROL A
EEE9  27        ???
EEEA  25 27     AND $27
EEEC  2b        ???
EEED  27        ???
EEEE  25 27     AND $27
EEF0  2b        ???
EEF1  27        ???
EEF2  23        ???
EEF3  28        PLP
EEF4  2c 28 23  BIT $2328
EEF7  28        PLP
EEF8  2c 28 22  BIT $2228
EEFB  28        PLP
EEFC  2a        ROL A
EEFD  28        PLP
EEFE  22        ???
EEFF  28        PLP
EF00  2a        ROL A
EF01  28        PLP
EF02  25 27     AND $27
EF04  2b        ???
EF05  27        ???
EF06  25 27     AND $27
EF08  2b        ???
EF09  27        ???
EF0A  24 27     BIT $27
EF0C  2c 27 24  BIT $2427
EF0F  27        ???
EF10  2c 27 25  BIT $2527
EF13  29 2c     AND #$2c
EF15  29 25     AND #$25
EF17  29 2c     AND #$2c
EF19  29 25     AND #$25
EF1B  29 2c     AND #$2c
EF1D  29 25     AND #$25
EF1F  29 2c     AND #$2c
EF21  29 24     AND #$24
EF23  29 2d     AND #$2d
EF25  29 24     AND #$24
EF27  29 2d     AND #$2d
EF29  29 24     AND #$24
EF2B  29 2e     AND #$2e
EF2D  29 24     AND #$24
EF2F  29 2d     AND #$2d
EF31  29 04     AND #$04
EF33  04        ???
EF34  04        ???
EF35  04        ???
EF36  04        ???
EF37  04        ???
EF38  04        ???
EF39  04        ???
EF3A  04        ???
EF3B  04        ???
EF3C  04        ???
EF3D  04        ???
EF3E  04        ???
EF3F  04        ???
EF40  04        ???
EF41  04        ???
EF42  04        ???
EF43  04        ???
EF44  04        ???
EF45  04        ???
EF46  04        ???
EF47  04        ???
EF48  04        ???
EF49  04        ???
EF4A  04        ???
EF4B  04        ???
EF4C  04        ???
EF4D  04        ???
EF4E  04        ???
EF4F  04        ???
EF50  04        ???
EF51  04        ???
EF52  04        ???
EF53  04        ???
EF54  04        ???
EF55  04        ???
EF56  04        ???
EF57  04        ???
EF58  04        ???
EF59  04        ???
EF5A  04        ???
EF5B  04        ???
EF5C  04        ???
EF5D  04        ???
EF5E  04        ???
EF5F  04        ???
EF60  04        ???
EF61  04        ???
EF62  04        ???
EF63  04        ???
EF64  04        ???
EF65  04        ???
EF66  04        ???
EF67  04        ???
EF68  04        ???
EF69  04        ???
EF6A  04        ???
EF6B  04        ???
EF6C  04        ???
EF6D  04        ???
EF6E  04        ???
EF6F  04        ???
EF70  04        ???
EF71  04        ???
EF72  04        ???
EF73  04        ???
EF74  04        ???
EF75  04        ???
EF76  04        ???
EF77  04        ???
EF78  04        ???
EF79  04        ???
EF7A  04        ???
EF7B  04        ???
EF7C  04        ???
EF7D  04        ???
EF7E  04        ???
EF7F  04        ???
EF80  04        ???
EF81  04        ???
EF82  04        ???
EF83  04        ???
EF84  04        ???
EF85  04        ???
EF86  04        ???
EF87  04        ???
EF88  04        ???
EF89  04        ???
EF8A  04        ???
EF8B  04        ???
EF8C  04        ???
EF8D  04        ???
EF8E  04        ???
EF8F  04        ???
EF90  04        ???
EF91  04        ???
EF92  04        ???
EF93  04        ???
EF94  04        ???
EF95  04        ???
EF96  04        ???
EF97  04        ???
EF98  04        ???
EF99  04        ???
EF9A  04        ???
EF9B  04        ???
EF9C  04        ???
EF9D  04        ???
EF9E  04        ???
EF9F  04        ???
EFA0  04        ???
EFA1  04        ???
EFA2  04        ???
EFA3  04        ???
EFA4  04        ???
EFA5  04        ???
EFA6  04        ???
EFA7  04        ???
EFA8  04        ???
EFA9  04        ???
EFAA  04        ???
EFAB  04        ???
EFAC  04        ???
EFAD  04        ???
EFAE  04        ???
EFAF  04        ???
EFB0  04        ???
EFB1  04        ???
EFB2  04        ???
EFB3  04        ???
EFB4  04        ???
EFB5  04        ???
EFB6  04        ???
EFB7  04        ???
EFB8  04        ???
EFB9  04        ???
EFBA  04        ???
EFBB  04        ???
EFBC  04        ???
EFBD  04        ???
EFBE  04        ???
EFBF  04        ???
EFC0  04        ???
EFC1  04        ???
EFC2  04        ???
EFC3  04        ???
EFC4  04        ???
EFC5  04        ???
EFC6  04        ???
EFC7  04        ???
EFC8  04        ???
EFC9  04        ???
EFCA  04        ???
EFCB  04        ???
EFCC  04        ???
EFCD  04        ???
EFCE  04        ???
EFCF  04        ???
EFD0  04        ???
EFD1  04        ???
EFD2  04        ???
EFD3  04        ???
EFD4  04        ???
EFD5  04        ???
EFD6  04        ???
EFD7  04        ???
EFD8  04        ???
EFD9  04        ???
EFDA  04        ???
EFDB  04        ???
EFDC  04        ???
EFDD  04        ???
EFDE  04        ???
EFDF  04        ???
EFE0  04        ???
EFE1  04        ???
EFE2  04        ???
EFE3  04        ???
EFE4  04        ???
EFE5  04        ???
EFE6  04        ???
EFE7  04        ???
EFE8  04        ???
EFE9  04        ???
EFEA  04        ???
EFEB  04        ???
EFEC  04        ???
EFED  04        ???
EFEE  04        ???
EFEF  04        ???
EFF0  04        ???
EFF1  04        ???
EFF2  04        ???
EFF3  04        ???
EFF4  04        ???
EFF5  04        ???
EFF6  04        ???
EFF7  04        ???
EFF8  04        ???
EFF9  04        ???
EFFA  04        ???
EFFB  04        ???
EFFC  04        ???
EFFD  04        ???
EFFE  04        ???
EFFF  04        ???
F000  04        ???
F001  04        ???
F002  04        ???
F003  04        ???
F004  04        ???
F005  04        ???
F006  04        ???
F007  04        ???
F008  04        ???
F009  04        ???
F00A  04        ???
F00B  04        ???
F00C  04        ???
F00D  04        ???
F00E  04        ???
F00F  04        ???
F010  04        ???
F011  04        ???
F012  00        BRK
F013  00        BRK
F014  03        ???
F015  00        BRK
F016  00        BRK
F017  00        BRK
F018  03        ???
F019  00        BRK
F01A  00        BRK
F01B  00        BRK
F01C  03        ???
F01D  00        BRK
F01E  00        BRK
F01F  00        BRK
F020  03        ???
F021  00        BRK
F022  00        BRK
F023  00        BRK
F024  03        ???
F025  00        BRK
F026  00        BRK
F027  00        BRK
F028  03        ???
F029  00        BRK
F02A  00        BRK
F02B  00        BRK
F02C  03        ???
F02D  00        BRK
F02E  00        BRK
F02F  00        BRK
F030  03        ???
F031  00        BRK
F032  00        BRK
F033  00        BRK
F034  03        ???
F035  00        BRK
F036  00        BRK
F037  00        BRK
F038  03        ???
F039  00        BRK
F03A  00        BRK
F03B  00        BRK
F03C  03        ???
F03D  00        BRK
F03E  00        BRK
F03F  00        BRK
F040  03        ???
F041  00        BRK
F042  00        BRK
F043  00        BRK
F044  03        ???
F045  00        BRK
F046  00        BRK
F047  00        BRK
F048  03        ???
F049  00        BRK
F04A  00        BRK
F04B  00        BRK
F04C  03        ???
F04D  00        BRK
F04E  00        BRK
F04F  00        BRK
F050  03        ???
F051  00        BRK
F052  00        BRK
F053  00        BRK
F054  03        ???
F055  00        BRK
F056  00        BRK
F057  00        BRK
F058  03        ???
F059  00        BRK
F05A  00        BRK
F05B  00        BRK
F05C  03        ???
F05D  00        BRK
F05E  00        BRK
F05F  00        BRK
F060  03        ???
F061  00        BRK
F062  00        BRK
F063  00        BRK
F064  03        ???
F065  00        BRK
F066  00        BRK
F067  00        BRK
F068  03        ???
F069  00        BRK
F06A  00        BRK
F06B  00        BRK
F06C  03        ???
F06D  00        BRK
F06E  00        BRK
F06F  00        BRK
F070  03        ???
F071  00        BRK
F072  00        BRK
F073  00        BRK
F074  03        ???
F075  00        BRK
F076  00        BRK
F077  00        BRK
F078  03        ???
F079  00        BRK
F07A  00        BRK
F07B  00        BRK
F07C  03        ???
F07D  00        BRK
F07E  00        BRK
F07F  00        BRK
F080  03        ???
F081  00        BRK
F082  00        BRK
F083  00        BRK
F084  03        ???
F085  00        BRK
F086  00        BRK
F087  00        BRK
F088  03        ???
F089  00        BRK
F08A  00        BRK
F08B  00        BRK
F08C  03        ???
F08D  00        BRK
F08E  00        BRK
F08F  00        BRK
F090  03        ???
F091  00        BRK
F092  31 30     AND ($30),Y
F094  31 30     AND ($30),Y
F096  2c 2b 2c  BIT $2c2b
F099  2b        ???
F09A  28        PLP
F09B  2b        ???
F09C  28        PLP
F09D  27        ???
F09E  25 00     AND $00
F0A0  02        ???
F0A1  02        ???
F0A2  02        ???
F0A3  02        ???
F0A4  02        ???
F0A5  02        ???
F0A6  02        ???
F0A7  02        ???
F0A8  02        ???
F0A9  02        ???
F0AA  02        ???
F0AB  02        ???
F0AC  08        PHP
F0AD  10 00     BPL $f0af
F0AF  25 25     AND $25
F0B1  24 25     BIT $25
F0B3  00        BRK
F0B4  08        PHP
F0B5  08        PHP
F0B6  08        PHP
F0B7  08        PHP
F0B8  10 25     BPL $f0df
F0BA  31 38     AND ($38),Y
F0BC  25 31     AND $31
F0BE  38        SEC
F0BF  24 30     BIT $30
F0C1  37        ???
F0C2  25 31     AND $31
F0C4  38        SEC
F0C5  00        BRK
F0C6  02        ???
F0C7  02        ???
F0C8  04        ???
F0C9  02        ???
F0CA  02        ???
F0CB  04        ???
F0CC  02        ???
F0CD  02        ???
F0CE  04        ???
F0CF  02        ???
F0D0  02        ???
F0D1  04        ???
F0D2  10 00     BPL $f0d4
F0D4  03        ???
F0D5  00        BRK
F0D6  03        ???
F0D7  00        BRK
F0D8  08        PHP
F0D9  08        PHP
F0DA  08        PHP
F0DB  08        PHP
F0DC  10 28     BPL $f106
F0DE  2c 2f 31  BIT $312f
F0E1  2d 31 34  AND $3431
F0E4  36 2f     ROL $2f,X
F0E6  33        ???
F0E7  36 39     ROL $39,X
F0E9  38        SEC
F0EA  36 34     ROL $34,X
F0EC  00        BRK
F0ED  02        ???
F0EE  02        ???
F0EF  02        ???
F0F0  02        ???
F0F1  02        ???
F0F2  02        ???
F0F3  02        ???
F0F4  02        ???
F0F5  02        ???
F0F6  02        ???
F0F7  02        ???
F0F8  02        ???
F0F9  02        ???
F0FA  02        ???
F0FB  04        ???
F0FC  10 00     BPL $f0fe
F0FE  28        PLP
F0FF  2d 2f 34  AND $342f
F102  00        BRK
F103  08        PHP
F104  08        PHP
F105  08        PHP
F106  08        PHP
F107  10 00     BPL $f109
F109  00        BRK
F10A  00        BRK
F10B  10 10     BPL $f11d
F10D  10 00     BPL $f10f
F10F  03        ???
F110  00        BRK
F111  03        ???
F112  00        BRK
F113  08        PHP
F114  08        PHP
F115  08        PHP
F116  08        PHP
F117  10 ae     BPL $f0c7
F119  60        RTS
F11A  a9 00     LDA #$00
F11C  8d 06 20  STA $2006
F11F  8d 06 20  STA $2006
F122  85 92     STA $92
F124  a9 80     LDA #$80
F126  85 93     STA $93
F128  a2 20     LDX #$20
F12A  a0 00     LDY #$00
F12C  b1 92     LDA ($92),Y
F12E  8d 07 20  STA $2007
F131  e6 92     INC $92
F133  d0 f7     BNE $f12c
F135  e6 93     INC $93
F137  ca        DEX
F138  d0 f2     BNE $f12c
F13A  60        RTS
F13B  85 a2     STA $a2
F13D  00        BRK
F13E  a9 19     LDA #$19
F140  a0 00     LDY #$00
F142  20 a0 f1  JSR $f1a0
F145  a2 08     LDX #$08
F147  a9 1d     LDA #$1d
F149  a0 00     LDY #$00
F14B  20 a0 f1  JSR $f1a0
F14E  a2 00     LDX #$00
F150  a9 18     LDA #$18
F152  a0 20     LDY #$20
F154  95 d0     STA $d0,X
F156  94 d2     STY $d2,X
F158  20 6a f1  JSR $f16a
F15B  a2 01     LDX #$01
F15D  a9 d8     LDA #$d8
F15F  a0 20     LDY #$20
F161  95 d0     STA $d0,X
F163  94 d2     STY $d2,X
F165  4c 6a f1  JMP $f16a
F168  8d 85 b5  STA $b585
F16B  d0 b4     BNE $f121
F16D  d2        ???
F16E  48        PHA
F16F  8a        TXA
F170  0a        ASL A
F171  0a        ASL A
F172  0a        ASL A
F173  aa        TAX
F174  68        PLA
F175  4c bb f1  JMP $f1bb
F178  20 bd 00  JSR $00bd
F17B  02        ???
F17C  a8        TAY
F17D  bd 03 02  LDA $0203,X
F180  60        RTS
F181  20 9d 03  JSR $039d
F184  02        ???
F185  98        TYA
F186  9d 00 02  STA $0200,X
F189  60        RTS
F18A  20 85 bd  JSR $bd85
F18D  02        ???
F18E  02        ???
F18F  a8        TAY
F190  bd 01 02  LDA $0201,X
F193  60        RTS
F194  20 8d 9d  JSR $9d8d
F197  01 02     ORA ($02,X)
F199  98        TYA
F19A  9d 02 02  STA $0202,X
F19D  60        RTS
F19E  86 20     STX $20
F1A0  9d 01 02  STA $0201,X
F1A3  18        CLC
F1A4  69 02     ADC #$02
F1A6  9d 05 02  STA $0205,X
F1A9  98        TYA
F1AA  9d 02 02  STA $0202,X
F1AD  9d 06 02  STA $0206,X
F1B0  60        RTS
F1B1  a0 bd     LDY #$bd
F1B3  00        BRK
F1B4  02        ???
F1B5  a8        TAY
F1B6  bd 03 02  LDA $0203,X
F1B9  60        RTS
F1BA  be 9d 03  LDX $039d,Y
F1BD  02        ???
F1BE  18        CLC
F1BF  69 08     ADC #$08
F1C1  9d 07 02  STA $0207,X
F1C4  98        TYA
F1C5  9d 00 02  STA $0200,X
F1C8  9d 04 02  STA $0204,X
F1CB  60        RTS
F1CC  4c a9 48  JMP $48a9
F1CF  bd 73 03  LDA $0373,X
F1D2  f0 3f     BEQ $f213
F1D4  de 76 03  DEC $0376,X
F1D7  d0 3a     BNE $f213
F1D9  de 73 03  DEC $0373,X
F1DC  bd 72 03  LDA $0372,X
F1DF  9d 76 03  STA $0376,X
F1E2  20 3a f3  JSR $f33a
F1E5  de 77 03  DEC $0377,X
F1E8  d0 07     BNE $f1f1
F1EA  a0 00     LDY #$00
F1EC  b1 d6     LDA ($d6),Y
F1EE  9d 77 03  STA $0377,X
F1F1  bd 71 03  LDA $0371,X
F1F4  a8        TAY
F1F5  bd 74 03  LDA $0374,X
F1F8  18        CLC
F1F9  79 15 f2  ADC $f215,Y
F1FC  9d 74 03  STA $0374,X
F1FF  48        PHA
F200  bd 75 03  LDA $0375,X
F203  18        CLC
F204  79 25 f2  ADC $f225,Y
F207  9d 75 03  STA $0375,X
F20A  a8        TAY
F20B  68        PLA
F20C  aa        TAX
F20D  68        PLA
F20E  4c 1d f6  JMP $f61d
F211  ad a9 68  LDA $68a9
F214  60        RTS
F215  00        BRK
F216  00        BRK
F217  02        ???
F218  fe 02 fe  INC $fe02,X
F21B  02        ???
F21C  fe 01 ff  INC $ff01,X
F21F  01 ff     ORA ($ff,X)
F221  02        ???
F222  02        ???
F223  fe fe fe  INC $fefe,X
F226  02        ???
F227  00        BRK
F228  00        BRK
F229  fe fe 02  INC $02fe,X
F22C  02        ???
F22D  fe fe 02  INC $02fe,X
F230  02        ???
F231  ff        ???
F232  01 ff     ORA ($ff,X)
F234  01 ff     ORA ($ff,X)
F236  ff        ???
F237  ff        ???
F238  48        PHA
F239  a9 00     LDA #$00
F23B  48        PHA
F23C  48        PHA
F23D  ba        TSX
F23E  a8        TAY
F23F  bd 03 01  LDA $0103,X
F242  f0 74     BEQ $f2b8
F244  30 0b     BMI $f251
F246  b1 b5     LDA ($b5),Y
F248  29 40     AND #$40
F24A  38        SEC
F24B  d0 6c     BNE $f2b9
F24D  f0 24     BEQ $f273
F24F  ff        ???
F250  ff        ???
F251  a5 b5     LDA $b5
F253  d0 07     BNE $f25c
F255  a5 b6     LDA $b6
F257  c9 80     CMP #$80
F259  38        SEC
F25A  f0 5d     BEQ $f2b9
F25C  c6 b5     DEC $b5
F25E  a5 b5     LDA $b5
F260  c9 ff     CMP #$ff
F262  d0 02     BNE $f266
F264  c6 b6     DEC $b6
F266  b1 b5     LDA ($b5),Y
F268  e6 b5     INC $b5
F26A  d0 02     BNE $f26e
F26C  e6 b6     INC $b6
F26E  29 80     AND #$80
F270  38        SEC
F271  f0 46     BEQ $f2b9
F273  bd 03 01  LDA $0103,X
F276  f0 40     BEQ $f2b8
F278  10 0a     BPL $f284
F27A  c6 b5     DEC $b5
F27C  a5 b5     LDA $b5
F27E  c9 ff     CMP #$ff
F280  d0 02     BNE $f284
F282  c6 b6     DEC $b6
F284  b1 b5     LDA ($b5),Y
F286  30 08     BMI $f290
F288  fe 01 01  INC $0101,X
F28B  d0 03     BNE $f290
F28D  fe 02 01  INC $0102,X
F290  b1 b5     LDA ($b5),Y
F292  29 40     AND #$40
F294  f0 0d     BEQ $f2a3
F296  de 01 01  DEC $0101,X
F299  bd 01 01  LDA $0101,X
F29C  c9 ff     CMP #$ff
F29E  d0 03     BNE $f2a3
F2A0  de 02 01  DEC $0102,X
F2A3  bd 03 01  LDA $0103,X
F2A6  30 06     BMI $f2ae
F2A8  e6 b5     INC $b5
F2AA  d0 02     BNE $f2ae
F2AC  e6 b6     INC $b6
F2AE  bd 01 01  LDA $0101,X
F2B1  d0 c0     BNE $f273
F2B3  bd 02 01  LDA $0102,X
F2B6  d0 bb     BNE $f273
F2B8  18        CLC
F2B9  b1 b5     LDA ($b5),Y
F2BB  9d 03 01  STA $0103,X
F2BE  68        PLA
F2BF  68        PLA
F2C0  68        PLA
F2C1  60        RTS
F2C2  a5 ba     LDA $ba
F2C4  f0 0a     BEQ $f2d0
F2C6  a5 b8     LDA $b8
F2C8  c9 18     CMP #$18
F2CA  b0 04     BCS $f2d0
F2CC  a9 01     LDA #$01
F2CE  d0 02     BNE $f2d2
F2D0  a9 00     LDA #$00
F2D2  60        RTS
F2D3  ff        ???
F2D4  ff        ???
F2D5  ff        ???
F2D6  ff        ???
F2D7  ff        ???
F2D8  ff        ???
F2D9  ff        ???
F2DA  ff        ???
F2DB  ff        ???
F2DC  ff        ???
F2DD  ff        ???
F2DE  ff        ???
F2DF  ff        ???
F2E0  ff        ???
F2E1  ff        ???
F2E2  ff        ???
F2E3  ff        ???
F2E4  ff        ???
F2E5  ff        ???
F2E6  ff        ???
F2E7  ff        ???
F2E8  ff        ???
F2E9  ff        ???
F2EA  ff        ???
F2EB  ff        ???
F2EC  ff        ???
F2ED  ff        ???
F2EE  ff        ???
F2EF  ff        ???
F2F0  ff        ???
F2F1  ff        ???
F2F2  ff        ???
F2F3  ff        ???
F2F4  ff        ???
F2F5  ff        ???
F2F6  ff        ???
F2F7  ff        ???
F2F8  ff        ???
F2F9  ff        ???
F2FA  ff        ???
F2FB  ff        ???
F2FC  ff        ???
F2FD  ff        ???
F2FE  ff        ???
F2FF  ff        ???
F300  ff        ???
F301  ff        ???
F302  ff        ???
F303  ff        ???
F304  ff        ???
F305  ff        ???
F306  ff        ???
F307  ff        ???
F308  ff        ???
F309  ff        ???
F30A  ff        ???
F30B  ff        ???
F30C  ff        ???
F30D  ff        ???
F30E  ff        ???
F30F  ff        ???
F310  ff        ???
F311  ff        ???
F312  ff        ???
F313  ff        ???
F314  00        BRK
F315  ff        ???
F316  ff        ???
F317  ff        ???
F318  ff        ???
F319  ff        ???
F31A  ff        ???
F31B  ff        ???
F31C  ff        ???
F31D  ff        ???
F31E  ff        ???
F31F  ff        ???
F320  ff        ???
F321  ff        ???
F322  ff        ???
F323  ff        ???
F324  00        BRK
F325  bd ad 3f  LDA $3fad,X
F328  04        ???
F329  49 04     EOR #$04
F32B  8d 36 04  STA $0436
F32E  ad 57 04  LDA $0457
F331  49 6f     EOR #$6f
F333  8d 54 04  STA $0454
F336  4c ca d5  JMP $d5ca
F339  33        ???
F33A  bd 70 03  LDA $0370,X
F33D  0a        ASL A
F33E  a8        TAY
F33F  b9 67 f3  LDA $f367,Y
F342  85 d4     STA $d4
F344  b9 68 f3  LDA $f368,Y
F347  85 d5     STA $d5
F349  bd 71 03  LDA $0371,X
F34C  0a        ASL A
F34D  a8        TAY
F34E  b1 d4     LDA ($d4),Y
F350  85 d6     STA $d6
F352  c8        INY
F353  b1 d4     LDA ($d4),Y
F355  85 d7     STA $d7
F357  bd 77 03  LDA $0377,X
F35A  0a        ASL A
F35B  a8        TAY
F35C  b1 d6     LDA ($d6),Y
F35E  85 d8     STA $d8
F360  c8        INY
F361  b1 d6     LDA ($d6),Y
F363  85 d9     STA $d9
F365  60        RTS
F366  20 87 f3  JSR $f387
F369  87        ???
F36A  f3        ???
F36B  a7        ???
F36C  f3        ???
F36D  c7        ???
F36E  f3        ???
F36F  e7        ???
F370  f3        ???
F371  07        ???
F372  f4        ???
F373  27        ???
F374  f4        ???
F375  47        ???
F376  f4        ???
F377  67        ???
F378  f4        ???
F379  67        ???
F37A  f4        ???
F37B  87        ???
F37C  f4        ???
F37D  a7        ???
F37E  f4        ???
F37F  c7        ???
F380  f4        ???
F381  e7        ???
F382  f4        ???
F383  07        ???
F384  f5 27     SBC $27,X
F386  f5 8f     SBC $8f,X
F388  f5 8f     SBC $8f,X
F38A  f5 8f     SBC $8f,X
F38C  f5 8f     SBC $8f,X
F38E  f5 8f     SBC $8f,X
F390  f5 8f     SBC $8f,X
F392  f5 8f     SBC $8f,X
F394  f5 8f     SBC $8f,X
F396  f5 8f     SBC $8f,X
F398  f5 8f     SBC $8f,X
F39A  f5 8f     SBC $8f,X
F39C  f5 8f     SBC $8f,X
F39E  f5 8f     SBC $8f,X
F3A0  f5 8f     SBC $8f,X
F3A2  f5 8f     SBC $8f,X
F3A4  f5 8f     SBC $8f,X
F3A6  f5 93     SBC $93,X
F3A8  f5 93     SBC $93,X
F3AA  f5 93     SBC $93,X
F3AC  f5 93     SBC $93,X
F3AE  f5 93     SBC $93,X
F3B0  f5 93     SBC $93,X
F3B2  f5 93     SBC $93,X
F3B4  f5 93     SBC $93,X
F3B6  f5 93     SBC $93,X
F3B8  f5 93     SBC $93,X
F3BA  f5 93     SBC $93,X
F3BC  f5 93     SBC $93,X
F3BE  f5 93     SBC $93,X
F3C0  f5 93     SBC $93,X
F3C2  f5 93     SBC $93,X
F3C4  f5 93     SBC $93,X
F3C6  f5 97     SBC $97,X
F3C8  f5 97     SBC $97,X
F3CA  f5 97     SBC $97,X
F3CC  f5 97     SBC $97,X
F3CE  f5 97     SBC $97,X
F3D0  f5 97     SBC $97,X
F3D2  f5 97     SBC $97,X
F3D4  f5 97     SBC $97,X
F3D6  f5 97     SBC $97,X
F3D8  f5 97     SBC $97,X
F3DA  f5 97     SBC $97,X
F3DC  f5 97     SBC $97,X
F3DE  f5 97     SBC $97,X
F3E0  f5 97     SBC $97,X
F3E2  f5 97     SBC $97,X
F3E4  f5 97     SBC $97,X
F3E6  f5 9b     SBC $9b,X
F3E8  f5 9b     SBC $9b,X
F3EA  f5 9b     SBC $9b,X
F3EC  f5 9b     SBC $9b,X
F3EE  f5 9b     SBC $9b,X
F3F0  f5 9b     SBC $9b,X
F3F2  f5 9b     SBC $9b,X
F3F4  f5 9b     SBC $9b,X
F3F6  f5 9b     SBC $9b,X
F3F8  f5 9b     SBC $9b,X
F3FA  f5 9b     SBC $9b,X
F3FC  f5 9b     SBC $9b,X
F3FE  f5 9b     SBC $9b,X
F400  f5 9b     SBC $9b,X
F402  f5 9b     SBC $9b,X
F404  f5 9b     SBC $9b,X
F406  f5 9f     SBC $9f,X
F408  f5 9f     SBC $9f,X
F40A  f5 9f     SBC $9f,X
F40C  f5 9f     SBC $9f,X
F40E  f5 9f     SBC $9f,X
F410  f5 9f     SBC $9f,X
F412  f5 9f     SBC $9f,X
F414  f5 9f     SBC $9f,X
F416  f5 9f     SBC $9f,X
F418  f5 9f     SBC $9f,X
F41A  f5 9f     SBC $9f,X
F41C  f5 9f     SBC $9f,X
F41E  f5 9f     SBC $9f,X
F420  f5 9f     SBC $9f,X
F422  f5 9f     SBC $9f,X
F424  f5 9f     SBC $9f,X
F426  f5 a3     SBC $a3,X
F428  f5 a3     SBC $a3,X
F42A  f5 a3     SBC $a3,X
F42C  f5 a3     SBC $a3,X
F42E  f5 a3     SBC $a3,X
F430  f5 a3     SBC $a3,X
F432  f5 a3     SBC $a3,X
F434  f5 a3     SBC $a3,X
F436  f5 a3     SBC $a3,X
F438  f5 a3     SBC $a3,X
F43A  f5 a3     SBC $a3,X
F43C  f5 a3     SBC $a3,X
F43E  f5 a3     SBC $a3,X
F440  f5 a3     SBC $a3,X
F442  f5 a3     SBC $a3,X
F444  f5 a3     SBC $a3,X
F446  f5 a7     SBC $a7,X
F448  f5 a7     SBC $a7,X
F44A  f5 a7     SBC $a7,X
F44C  f5 a7     SBC $a7,X
F44E  f5 a7     SBC $a7,X
F450  f5 a7     SBC $a7,X
F452  f5 a7     SBC $a7,X
F454  f5 a7     SBC $a7,X
F456  f5 a7     SBC $a7,X
F458  f5 a7     SBC $a7,X
F45A  f5 a7     SBC $a7,X
F45C  f5 a7     SBC $a7,X
F45E  f5 a7     SBC $a7,X
F460  f5 a7     SBC $a7,X
F462  f5 a7     SBC $a7,X
F464  f5 a7     SBC $a7,X
F466  f5 af     SBC $af,X
F468  f5 af     SBC $af,X
F46A  f5 af     SBC $af,X
F46C  f5 af     SBC $af,X
F46E  f5 af     SBC $af,X
F470  f5 af     SBC $af,X
F472  f5 af     SBC $af,X
F474  f5 af     SBC $af,X
F476  f5 af     SBC $af,X
F478  f5 af     SBC $af,X
F47A  f5 af     SBC $af,X
F47C  f5 af     SBC $af,X
F47E  f5 af     SBC $af,X
F480  f5 af     SBC $af,X
F482  f5 af     SBC $af,X
F484  f5 af     SBC $af,X
F486  f5 b3     SBC $b3,X
F488  f5 b3     SBC $b3,X
F48A  f5 b3     SBC $b3,X
F48C  f5 b3     SBC $b3,X
F48E  f5 b3     SBC $b3,X
F490  f5 b3     SBC $b3,X
F492  f5 b3     SBC $b3,X
F494  f5 b3     SBC $b3,X
F496  f5 b3     SBC $b3,X
F498  f5 b3     SBC $b3,X
F49A  f5 b3     SBC $b3,X
F49C  f5 b3     SBC $b3,X
F49E  f5 b3     SBC $b3,X
F4A0  f5 b3     SBC $b3,X
F4A2  f5 b3     SBC $b3,X
F4A4  f5 b3     SBC $b3,X
F4A6  f5 b7     SBC $b7,X
F4A8  f5 b7     SBC $b7,X
F4AA  f5 b7     SBC $b7,X
F4AC  f5 b7     SBC $b7,X
F4AE  f5 b7     SBC $b7,X
F4B0  f5 b7     SBC $b7,X
F4B2  f5 b7     SBC $b7,X
F4B4  f5 b7     SBC $b7,X
F4B6  f5 b7     SBC $b7,X
F4B8  f5 b7     SBC $b7,X
F4BA  f5 b7     SBC $b7,X
F4BC  f5 b7     SBC $b7,X
F4BE  f5 b7     SBC $b7,X
F4C0  f5 b7     SBC $b7,X
F4C2  f5 b7     SBC $b7,X
F4C4  f5 b7     SBC $b7,X
F4C6  f5 bb     SBC $bb,X
F4C8  f5 bb     SBC $bb,X
F4CA  f5 bb     SBC $bb,X
F4CC  f5 bb     SBC $bb,X
F4CE  f5 bb     SBC $bb,X
F4D0  f5 bb     SBC $bb,X
F4D2  f5 bb     SBC $bb,X
F4D4  f5 bb     SBC $bb,X
F4D6  f5 bb     SBC $bb,X
F4D8  f5 bb     SBC $bb,X
F4DA  f5 bb     SBC $bb,X
F4DC  f5 bb     SBC $bb,X
F4DE  f5 bb     SBC $bb,X
F4E0  f5 bb     SBC $bb,X
F4E2  f5 bb     SBC $bb,X
F4E4  f5 bb     SBC $bb,X
F4E6  f5 bf     SBC $bf,X
F4E8  f5 bf     SBC $bf,X
F4EA  f5 bf     SBC $bf,X
F4EC  f5 bf     SBC $bf,X
F4EE  f5 bf     SBC $bf,X
F4F0  f5 bf     SBC $bf,X
F4F2  f5 bf     SBC $bf,X
F4F4  f5 bf     SBC $bf,X
F4F6  f5 bf     SBC $bf,X
F4F8  f5 bf     SBC $bf,X
F4FA  f5 bf     SBC $bf,X
F4FC  f5 bf     SBC $bf,X
F4FE  f5 bf     SBC $bf,X
F500  f5 bf     SBC $bf,X
F502  f5 bf     SBC $bf,X
F504  f5 bf     SBC $bf,X
F506  f5 c3     SBC $c3,X
F508  f5 c3     SBC $c3,X
F50A  f5 c3     SBC $c3,X
F50C  f5 c3     SBC $c3,X
F50E  f5 c3     SBC $c3,X
F510  f5 c3     SBC $c3,X
F512  f5 c3     SBC $c3,X
F514  f5 c3     SBC $c3,X
F516  f5 c3     SBC $c3,X
F518  f5 c3     SBC $c3,X
F51A  f5 c3     SBC $c3,X
F51C  f5 c3     SBC $c3,X
F51E  f5 c3     SBC $c3,X
F520  f5 c3     SBC $c3,X
F522  f5 c3     SBC $c3,X
F524  f5 c3     SBC $c3,X
F526  f5 c7     SBC $c7,X
F528  f5 c7     SBC $c7,X
F52A  f5 c7     SBC $c7,X
F52C  f5 c7     SBC $c7,X
F52E  f5 c7     SBC $c7,X
F530  f5 c7     SBC $c7,X
F532  f5 c7     SBC $c7,X
F534  f5 c7     SBC $c7,X
F536  f5 c7     SBC $c7,X
F538  f5 c7     SBC $c7,X
F53A  f5 c7     SBC $c7,X
F53C  f5 c7     SBC $c7,X
F53E  f5 c7     SBC $c7,X
F540  f5 c7     SBC $c7,X
F542  f5 c7     SBC $c7,X
F544  f5 c7     SBC $c7,X
F546  f5 bd     SBC $bd,X
F548  a0 a8     LDY #$a8
F54A  98        TYA
F54B  49 03     EOR #$03
F54D  49 48     EOR #$48
F54F  a8        TAY
F550  b9 79 f5  LDA $f579,Y
F553  48        PHA
F554  b9 82 f5  LDA $f582,Y
F557  c8        INY
F558  c8        INY
F559  48        PHA
F55A  a9 bc     LDA #$bc
F55C  49 fc     EOR #$fc
F55E  85 d2     STA $d2
F560  a9 93     LDA #$93
F562  49 97     EOR #$97
F564  85 d3     STA $d3
F566  a9 f9     LDA #$f9
F568  49 cb     EOR #$cb
F56A  85 d0     STA $d0
F56C  a9 d8     LDA #$d8
F56E  49 dc     EOR #$dc
F570  85 d1     STA $d1
F572  b1 d0     LDA ($d0),Y
F574  51 d2     EOR ($d2),Y
F576  91 d0     STA ($d0),Y
F578  60        RTS
F579  e1 80     SBC ($80,X)
F57B  f5 ce     SBC $ce,X
F57D  fa        ???
F57E  78        SEI
F57F  98        TYA
F580  73        ???
F581  8d 8d 48  STA $488d
F584  48        PHA
F585  c2        ???
F586  a6 86     LDX $86
F588  a0 f3     LDY #$f3
F58A  c7        ???
F58B  01 00     ORA ($00,X)
F58D  cb        ???
F58E  f5 01     SBC $01,X
F590  00        BRK
F591  d0 f5     BNE $f588
F593  01 00     ORA ($00,X)
F595  d5 f5     CMP $f5,X
F597  01 00     ORA ($00,X)
F599  da        ???
F59A  f5 01     SBC $01,X
F59C  00        BRK
F59D  df        ???
F59E  f5 01     SBC $01,X
F5A0  00        BRK
F5A1  e4 f5     CPX $f5
F5A3  01 00     ORA ($00,X)
F5A5  e9 f5     SBC #$f5
F5A7  01 00     ORA ($00,X)
F5A9  ee f5 01  INC $01f5
F5AC  00        BRK
F5AD  f3        ???
F5AE  f5 01     SBC $01,X
F5B0  00        BRK
F5B1  f8        SED
F5B2  f5 01     SBC $01,X
F5B4  00        BRK
F5B5  fd f5 01  SBC $01f5,X
F5B8  00        BRK
F5B9  02        ???
F5BA  f6 01     INC $01,X
F5BC  00        BRK
F5BD  07        ???
F5BE  f6 01     INC $01,X
F5C0  00        BRK
F5C1  0c        ???
F5C2  f6 01     INC $01,X
F5C4  00        BRK
F5C5  11 f6     ORA ($f6),Y
F5C7  01 00     ORA ($00,X)
F5C9  16 f6     ASL $f6,X
F5CB  02        ???
F5CC  01 01     ORA ($01,X)
F5CE  81 83     STA ($83,X)
F5D0  02        ???
F5D1  01 01     ORA ($01,X)
F5D3  85 87     STA $87
F5D5  02        ???
F5D6  01 01     ORA ($01,X)
F5D8  89        ???
F5D9  8b        ???
F5DA  02        ???
F5DB  01 01     ORA ($01,X)
F5DD  8d 8f 02  STA $028f
F5E0  01 01     ORA ($01,X)
F5E2  91 93     STA ($93),Y
F5E4  02        ???
F5E5  01 01     ORA ($01,X)
F5E7  95 97     STA $97,X
F5E9  02        ???
F5EA  01 01     ORA ($01,X)
F5EC  99 9b 02  STA $029b,Y
F5EF  01 01     ORA ($01,X)
F5F1  9d 9f 02  STA $029f,X
F5F4  01 01     ORA ($01,X)
F5F6  a1 a3     LDA ($a3,X)
F5F8  02        ???
F5F9  01 01     ORA ($01,X)
F5FB  a5 a7     LDA $a7
F5FD  02        ???
F5FE  01 01     ORA ($01,X)
F600  a9 ab     LDA #$ab
F602  02        ???
F603  01 01     ORA ($01,X)
F605  ad af 02  LDA $02af
F608  01 01     ORA ($01,X)
F60A  b1 b3     LDA ($b3),Y
F60C  02        ???
F60D  01 01     ORA ($01,X)
F60F  b5 b7     LDA $b7,X
F611  02        ???
F612  01 01     ORA ($01,X)
F614  b9 bb 02  LDA $02bb,Y
F617  01 01     ORA ($01,X)
F619  bd bf 48  LDA $48bf,X
F61C  a9 48     LDA #$48
F61E  8a        TXA
F61F  48        PHA
F620  98        TYA
F621  48        PHA
F622  48        PHA
F623  48        PHA
F624  48        PHA
F625  48        PHA
F626  48        PHA
F627  ba        TSX
F628  a9 03     LDA #$03
F62A  9d 01 01  STA $0101,X
F62D  a0 02     LDY #$02
F62F  b1 d8     LDA ($d8),Y
F631  9d 04 01  STA $0104,X
F634  a0 01     LDY #$01
F636  b1 d8     LDA ($d8),Y
F638  9d 02 01  STA $0102,X
F63B  bd 07 01  LDA $0107,X
F63E  48        PHA
F63F  a0 00     LDY #$00
F641  b1 d8     LDA ($d8),Y
F643  9d 03 01  STA $0103,X
F646  bc 01 01  LDY $0101,X
F649  b1 d8     LDA ($d8),Y
F64B  9d 05 01  STA $0105,X
F64E  20 90 f6  JSR $f690
F651  bd 08 01  LDA $0108,X
F654  18        CLC
F655  69 04     ADC #$04
F657  9d 08 01  STA $0108,X
F65A  fe 01 01  INC $0101,X
F65D  bd 07 01  LDA $0107,X
F660  18        CLC
F661  69 08     ADC #$08
F663  9d 07 01  STA $0107,X
F666  de 03 01  DEC $0103,X
F669  d0 db     BNE $f646
F66B  bd 06 01  LDA $0106,X
F66E  c9 f0     CMP #$f0
F670  b0 03     BCS $f675
F672  18        CLC
F673  69 10     ADC #$10
F675  9d 06 01  STA $0106,X
F678  68        PLA
F679  9d 07 01  STA $0107,X
F67C  de 02 01  DEC $0102,X
F67F  d0 ba     BNE $f63b
F681  68        PLA
F682  68        PLA
F683  68        PLA
F684  68        PLA
F685  68        PLA
F686  68        PLA
F687  a8        TAY
F688  68        PLA
F689  aa        TAX
F68A  68        PLA
F68B  60        RTS
F68C  68        PLA
F68D  68        PLA
F68E  68        PLA
F68F  a9 bc     LDA #$bc
F691  08        PHP
F692  01 bd     ORA ($bd,X)
F694  05 01     ORA $01
F696  99 01 02  STA $0201,Y
F699  bd 04 01  LDA $0104,X
F69C  99 02 02  STA $0202,Y
F69F  bd 07 01  LDA $0107,X
F6A2  99 03 02  STA $0203,Y
F6A5  bd 06 01  LDA $0106,X
F6A8  99 00 02  STA $0200,Y
F6AB  60        RTS
F6AC  bd 48 8a  LDA $8a48,X
F6AF  48        PHA
F6B0  98        TYA
F6B1  48        PHA
F6B2  ba        TSX
F6B3  a5 93     LDA $93
F6B5  48        PHA
F6B6  a5 92     LDA $92
F6B8  48        PHA
F6B9  bd 05 01  LDA $0105,X
F6BC  85 93     STA $93
F6BE  bd 04 01  LDA $0104,X
F6C1  85 92     STA $92
F6C3  a0 01     LDY #$01
F6C5  8a        TXA
F6C6  48        PHA
F6C7  b1 92     LDA ($92),Y
F6C9  20 76 f7  JSR $f776
F6CC  aa        TAX
F6CD  c8        INY
F6CE  b1 92     LDA ($92),Y
F6D0  20 76 f7  JSR $f776
F6D3  ca        DEX
F6D4  d0 f7     BNE $f6cd
F6D6  68        PLA
F6D7  aa        TAX
F6D8  98        TYA
F6D9  18        CLC
F6DA  65 92     ADC $92
F6DC  9d 04 01  STA $0104,X
F6DF  a9 00     LDA #$00
F6E1  65 93     ADC $93
F6E3  9d 05 01  STA $0105,X
F6E6  68        PLA
F6E7  85 92     STA $92
F6E9  68        PLA
F6EA  85 93     STA $93
F6EC  68        PLA
F6ED  a8        TAY
F6EE  68        PLA
F6EF  aa        TAX
F6F0  68        PLA
F6F1  60        RTS
F6F2  2c 48 48  BIT $4848
F6F5  8a        TXA
F6F6  48        PHA
F6F7  98        TYA
F6F8  48        PHA
F6F9  ba        TSX
F6FA  a0 04     LDY #$04
F6FC  a9 00     LDA #$00
F6FE  9d 04 01  STA $0104,X
F701  bd 03 01  LDA $0103,X
F704  38        SEC
F705  f9 44 f7  SBC $f744,Y
F708  9d 03 01  STA $0103,X
F70B  bd 02 01  LDA $0102,X
F70E  f9 48 f7  SBC $f748,Y
F711  90 0b     BCC $f71e
F713  9d 02 01  STA $0102,X
F716  fe 04 01  INC $0104,X
F719  4c 01 f7  JMP $f701
F71C  9d a9 bd  STA $bda9,X
F71F  03        ???
F720  01 79     ORA ($79,X)
F722  44        ???
F723  f7        ???
F724  9d 03 01  STA $0103,X
F727  98        TYA
F728  dd 01 01  CMP $0101,X
F72B  b0 08     BCS $f735
F72D  bd 04 01  LDA $0104,X
F730  09 30     ORA #$30
F732  20 76 f7  JSR $f776
F735  88        DEY
F736  d0 c4     BNE $f6fc
F738  bd 03 01  LDA $0103,X
F73B  09 30     ORA #$30
F73D  20 76 f7  JSR $f776
F740  68        PLA
F741  68        PLA
F742  68        PLA
F743  68        PLA
F744  60        RTS
F745  0a        ASL A
F746  64        ???
F747  e8        INX
F748  10 00     BPL $f74a
F74A  00        BRK
F74B  03        ???
F74C  27        ???
F74D  48        PHA
F74E  98        TYA
F74F  20 53 f7  JSR $f753
F752  68        PLA
F753  48        PHA
F754  4a        LSR A
F755  4a        LSR A
F756  4a        LSR A
F757  4a        LSR A
F758  20 5c f7  JSR $f75c
F75B  68        PLA
F75C  48        PHA
F75D  29 0f     AND #$0f
F75F  c9 0a     CMP #$0a
F761  90 02     BCC $f765
F763  69 06     ADC #$06
F765  20 6b f7  JSR $f76b
F768  68        PLA
F769  60        RTS
F76A  c9 48     CMP #$48
F76C  18        CLC
F76D  69 30     ADC #$30
F76F  20 76 f7  JSR $f776
F772  68        PLA
F773  60        RTS
F774  ad b5 4c  LDA $4cb5
F777  19 fa 4a  ORA $4afa,Y
F77A  5e a8 a9  LSR $a9a8,X
F77D  7f        ???
F77E  49 78     EOR #$78
F780  48        PHA
F781  a9 c3     LDA #$c3
F783  49 9c     EOR #$9c
F785  48        PHA
F786  98        TYA
F787  60        RTS
F788  99 48 8a  STA $8a48,Y
F78B  48        PHA
F78C  98        TYA
F78D  48        PHA
F78E  ba        TSX
F78F  bd 01 01  LDA $0101,X
F792  4a        LSR A
F793  4a        LSR A
F794  4a        LSR A
F795  1d 03 01  ORA $0103,X
F798  20 19 fa  JSR $fa19
F79B  bd 01 01  LDA $0101,X
F79E  0a        ASL A
F79F  0a        ASL A
F7A0  0a        ASL A
F7A1  0a        ASL A
F7A2  0a        ASL A
F7A3  1d 02 01  ORA $0102,X
F7A6  20 19 fa  JSR $fa19
F7A9  68        PLA
F7AA  a8        TAY
F7AB  68        PLA
F7AC  aa        TAX
F7AD  68        PLA
F7AE  60        RTS
F7AF  48        PHA
F7B0  29 03     AND #$03
F7B2  48        PHA
F7B3  8a        TXA
F7B4  48        PHA
F7B5  98        TYA
F7B6  48        PHA
F7B7  ba        TSX
F7B8  a0 00     LDY #$00
F7BA  bd 01 01  LDA $0101,X
F7BD  4a        LSR A
F7BE  4a        LSR A
F7BF  98        TYA
F7C0  2a        ROL A
F7C1  a8        TAY
F7C2  bd 02 01  LDA $0102,X
F7C5  4a        LSR A
F7C6  4a        LSR A
F7C7  98        TYA
F7C8  2a        ROL A
F7C9  a8        TAY
F7CA  f0 09     BEQ $f7d5
F7CC  1e 03 01  ASL $0103,X
F7CF  1e 03 01  ASL $0103,X
F7D2  88        DEY
F7D3  d0 f7     BNE $f7cc
F7D5  a8        TAY
F7D6  b9 e9 f7  LDA $f7e9,Y
F7D9  20 19 fa  JSR $fa19
F7DC  bd 03 01  LDA $0103,X
F7DF  20 19 fa  JSR $fa19
F7E2  68        PLA
F7E3  a8        TAY
F7E4  68        PLA
F7E5  aa        TAX
F7E6  68        PLA
F7E7  68        PLA
F7E8  60        RTS
F7E9  fc        ???
F7EA  f3        ???
F7EB  cf        ???
F7EC  3f        ???
F7ED  a0 48     LDY #$48
F7EF  8a        TXA
F7F0  48        PHA
F7F1  98        TYA
F7F2  48        PHA
F7F3  ba        TSX
F7F4  bd 03 01  LDA $0103,X
F7F7  09 03     ORA #$03
F7F9  20 19 fa  JSR $fa19
F7FC  bd 01 01  LDA $0101,X
F7FF  0a        ASL A
F800  0a        ASL A
F801  0a        ASL A
F802  29 e0     AND #$e0
F804  1d 02 01  ORA $0102,X
F807  4a        LSR A
F808  4a        LSR A
F809  09 c0     ORA #$c0
F80B  20 19 fa  JSR $fa19
F80E  68        PLA
F80F  a8        TAY
F810  68        PLA
F811  aa        TAX
F812  68        PLA
F813  60        RTS
F814  20 78 d8  JSR $d878
F817  a9 10     LDA #$10
F819  8d 00 20  STA $2000
F81C  a2 ff     LDX #$ff
F81E  9a        TXS
F81F  ad 02 20  LDA $2002
F822  10 fb     BPL $f81f
F824  ad 02 20  LDA $2002
F827  10 fb     BPL $f824
F829  a0 07     LDY #$07
F82B  84 01     STY $01
F82D  a0 00     LDY #$00
F82F  84 00     STY $00
F831  98        TYA
F832  91 00     STA ($00),Y
F834  88        DEY
F835  d0 fb     BNE $f832
F837  c6 01     DEC $01
F839  10 f7     BPL $f832
F83B  85 01     STA $01
F83D  a9 00     LDA #$00
F83F  8d 11 40  STA $4011
F842  a9 00     LDA #$00
F844  8d 15 40  STA $4015
F847  a9 30     LDA #$30
F849  20 88 f8  JSR $f888
F84C  a9 06     LDA #$06
F84E  20 a2 f8  JSR $f8a2
F851  a9 ff     LDA #$ff
F853  85 de     STA $de
F855  20 aa f8  JSR $f8aa
F858  20 b8 f8  JSR $f8b8
F85B  20 c5 f8  JSR $f8c5
F85E  20 0e f9  JSR $f90e
F861  20 19 f1  JSR $f119
F864  20 bc cd  JSR $cdbc
F867  a9 0f     LDA #$0f
F869  8d 15 40  STA $4015
F86C  20 9b f8  JSR $f89b
F86F  20 81 f8  JSR $f881
F872  4c 19 d0  JMP $d019
F875  4c ad 02  JMP $02ad
F878  20 a5 e2  JSR $e2a5
F87B  29 7f     AND #$7f
F87D  4c 88 f8  JMP $f888
F880  bc ad 02  LDY $02ad,X
F883  20 a5 e2  JSR $e2a5
F886  09 80     ORA #$80
F888  85 e2     STA $e2
F88A  8d 00 20  STA $2000
F88D  60        RTS
F88E  60        RTS
F88F  a0 ad     LDY #$ad
F891  02        ???
F892  20 a5 e3  JSR $e3a5
F895  29 e1     AND #$e1
F897  4c a2 f8  JMP $f8a2
F89A  86 ad     STX $ad
F89C  02        ???
F89D  20 a5 e3  JSR $e3a5
F8A0  09 1e     ORA #$1e
F8A2  85 e3     STA $e3
F8A4  8d 01 20  STA $2001
F8A7  60        RTS
F8A8  8c 96 48  STY $4896
F8AB  a5 e4     LDA $e4
F8AD  8d 05 20  STA $2005
F8B0  a5 e5     LDA $e5
F8B2  8d 05 20  STA $2005
F8B5  68        PLA
F8B6  60        RTS
F8B7  46 a9     LSR $a9
F8B9  ff        ???
F8BA  a2 00     LDX #$00
F8BC  9d 00 02  STA $0200,X
F8BF  e8        INX
F8C0  d0 fa     BNE $f8bc
F8C2  60        RTS
F8C3  20 85 a2  JSR $a285
F8C6  24 a9     BIT $a9
F8C8  20 20 de  JSR $de20
F8CB  f8        SED
F8CC  a2 28     LDX #$28
F8CE  a9 20     LDA #$20
F8D0  20 de f8  JSR $f8de
F8D3  a2 2c     LDX #$2c
F8D5  a9 20     LDA #$20
F8D7  20 de f8  JSR $f8de
F8DA  a2 20     LDX #$20
F8DC  a9 20     LDA #$20
F8DE  8e 06 20  STX $2006
F8E1  a2 00     LDX #$00
F8E3  8e 06 20  STX $2006
F8E6  a2 0f     LDX #$0f
F8E8  d0 01     BNE $f8eb
F8EA  8a        TXA
F8EB  a0 40     LDY #$40
F8ED  8d 07 20  STA $2007
F8F0  88        DEY
F8F1  d0 fa     BNE $f8ed
F8F3  ca        DEX
F8F4  f0 f4     BEQ $f8ea
F8F6  10 f3     BPL $f8eb
F8F8  60        RTS
F8F9  9d 84 49  STA $4984,X
F8FC  f8        SED
F8FD  85 d1     STA $d1
F8FF  4c 03 f9  JMP $f903
F902  35 ad     AND $ad,X
F904  47        ???
F905  04        ???
F906  49 b8     EOR #$b8
F908  85 d0     STA $d0
F90A  6c d0 00  JMP ($00d0)
F90D  75 a0     ADC $a0,X
F90F  00        BRK
F910  a9 3f     LDA #$3f
F912  8d 06 20  STA $2006
F915  8c 06 20  STY $2006
F918  b9 27 f9  LDA $f927,Y
F91B  8d 07 20  STA $2007
F91E  c8        INY
F91F  c0 20     CPY #$20
F921  d0 f5     BNE $f918
F923  20 88 e6  JSR $e688
F926  60        RTS
F927  0f        ???
F928  15 2b     ORA $2b,X
F92A  10 0f     BPL $f93b
F92C  15 2b     ORA $2b,X
F92E  25 0f     AND $0f
F930  25 25     AND $25
F932  10 0f     BPL $f943
F934  25 12     AND $12
F936  30 0f     BMI $f947
F938  0f        ???
F939  2b        ???
F93A  10 0f     BPL $f94b
F93C  1a        ???
F93D  00        BRK
F93E  34        ???
F93F  0f        ???
F940  25 25     AND $25
F942  10 0f     BPL $f953
F944  0f        ???
F945  26 36     ROL $36
F947  20 85 48  JSR $4885
F94A  8a        TXA
F94B  48        PHA
F94C  98        TYA
F94D  48        PHA
F94E  08        PHP
F94F  a9 00     LDA #$00
F951  8d 03 20  STA $2003
F954  a9 02     LDA #$02
F956  8d 14 40  STA $4014
F959  e6 d0     INC $d0
F95B  d0 02     BNE $f95f
F95D  e6 d1     INC $d1
F95F  20 3f fa  JSR $fa3f
F962  20 6c e5  JSR $e56c
F965  a5 e2     LDA $e2
F967  8d 00 20  STA $2000
F96A  20 aa f8  JSR $f8aa
F96D  20 d5 f9  JSR $f9d5
F970  20 72 d5  JSR $d572
F973  20 85 f9  JSR $f985
F976  20 0b e9  JSR $e90b
F979  28        PLP
F97A  68        PLA
F97B  a8        TAY
F97C  68        PLA
F97D  aa        TAX
F97E  68        PLA
F97F  4c 83 f9  JMP $f983
F982  20 40 a9  JSR $a940
F985  a0 00     LDY #$00
F987  a9 3b     LDA #$3b
F989  e6 bc     INC $bc
F98B  c5 bc     CMP $bc
F98D  b0 1c     BCS $f9ab
F98F  84 bc     STY $bc
F991  e6 bd     INC $bd
F993  c5 bd     CMP $bd
F995  b0 14     BCS $f9ab
F997  84 bd     STY $bd
F999  e6 be     INC $be
F99B  c5 be     CMP $be
F99D  b0 0c     BCS $f9ab
F99F  84 be     STY $be
F9A1  e6 bf     INC $bf
F9A3  a5 bf     LDA $bf
F9A5  c9 17     CMP #$17
F9A7  90 02     BCC $f9ab
F9A9  84 bf     STY $bf
F9AB  60        RTS
F9AC  5d 41 20  EOR $2041,X
F9AF  ba        TSX
F9B0  f9 a9 56  SBC $56a9,Y
F9B3  8d 37 04  STA $0437
F9B6  6c d2 00  JMP ($00d2)
F9B9  6c ad 37  JMP ($37ad)
F9BC  04        ???
F9BD  4c c2 f9  JMP $f9c2
F9C0  6c 20 85  JMP ($8520)
F9C3  d2        ???
F9C4  4c c9 f9  JMP $f9c9
F9C7  6c 6c ad  JMP ($ad6c)
F9CA  55 04     EOR $04,X
F9CC  4c d0 f9  JMP $f9d0
F9CF  6c 85 d3  JMP ($d385)
F9D2  60        RTS
F9D3  6c 4c a2  JMP ($a24c)
F9D6  01 8e     ORA ($8e,X)
F9D8  16 40     ASL $40,X
F9DA  a0 00     LDY #$00
F9DC  8c 16 40  STY $4016
F9DF  84 dd     STY $dd
F9E1  a0 08     LDY #$08
F9E3  bd 16 40  LDA $4016,X
F9E6  29 03     AND #$03
F9E8  c9 01     CMP #$01
F9EA  26 dd     ROL $dd
F9EC  88        DEY
F9ED  d0 f4     BNE $f9e3
F9EF  b5 de     LDA $de,X
F9F1  49 ff     EOR #$ff
F9F3  25 dd     AND $dd
F9F5  95 e0     STA $e0,X
F9F7  a5 dd     LDA $dd
F9F9  95 de     STA $de,X
F9FB  ca        DEX
F9FC  10 e1     BPL $f9df
F9FE  60        RTS
F9FF  4c 48 a9  JMP $a948
FA02  ff        ???
FA03  85 dc     STA $dc
FA05  a5 da     LDA $da
FA07  c9 40     CMP #$40
FA09  b0 fa     BCS $fa05
FA0B  a5 da     LDA $da
FA0D  d0 02     BNE $fa11
FA0F  85 db     STA $db
FA11  a9 00     LDA #$00
FA13  85 da     STA $da
FA15  68        PLA
FA16  60        RTS
FA17  20 85 48  JSR $4885
FA1A  8a        TXA
FA1B  48        PHA
FA1C  98        TYA
FA1D  48        PHA
FA1E  ba        TSX
FA1F  bd 03 01  LDA $0103,X
FA22  a4 db     LDY $db
FA24  99 00 03  STA $0300,Y
FA27  e6 db     INC $db
FA29  68        PLA
FA2A  a8        TAY
FA2B  68        PLA
FA2C  aa        TAX
FA2D  68        PLA
FA2E  60        RTS
FA2F  c8        INY
FA30  b5 48     LDA $48,X
FA32  a5 db     LDA $db
FA34  85 da     STA $da
FA36  a9 00     LDA #$00
FA38  85 dc     STA $dc
FA3A  68        PLA
FA3B  60        RTS
FA3C  48        PHA
FA3D  60        RTS
FA3E  85 a5     STA $a5
FA40  da        ???
FA41  f0 5d     BEQ $faa0
FA43  ad 02 20  LDA $2002
FA46  a0 ff     LDY #$ff
FA48  c8        INY
FA49  c4 da     CPY $da
FA4B  b0 53     BCS $faa0
FA4D  b9 00 03  LDA $0300,Y
FA50  8d 06 20  STA $2006
FA53  c8        INY
FA54  b9 00 03  LDA $0300,Y
FA57  8d 06 20  STA $2006
FA5A  c8        INY
FA5B  b9 00 03  LDA $0300,Y
FA5E  c9 3f     CMP #$3f
FA60  b0 15     BCS $fa77
FA62  b9 00 03  LDA $0300,Y
FA65  29 3f     AND #$3f
FA67  aa        TAX
FA68  c8        INY
FA69  b9 00 03  LDA $0300,Y
FA6C  8d 07 20  STA $2007
FA6F  ca        DEX
FA70  f0 d6     BEQ $fa48
FA72  4c 68 fa  JMP $fa68
FA75  00        BRK
FA76  a2 ad     LDX #$ad
FA78  07        ???
FA79  20 ad 07  JSR $07ad
FA7C  20 48 88  JSR $8848
FA7F  88        DEY
FA80  b9 00 03  LDA $0300,Y
FA83  8d 06 20  STA $2006
FA86  c8        INY
FA87  b9 00 03  LDA $0300,Y
FA8A  8d 06 20  STA $2006
FA8D  c8        INY
FA8E  68        PLA
FA8F  39 00 03  AND $0300,Y
FA92  c8        INY
FA93  19 00 03  ORA $0300,Y
FA96  8d 07 20  STA $2007
FA99  4c 48 fa  JMP $fa48
FA9C  4a        LSR A
FA9D  4a        LSR A
FA9E  4a        LSR A
FA9F  4c a9 00  JMP $00a9
FAA2  85 da     STA $da
FAA4  60        RTS
FAA5  4a        LSR A
FAA6  20 08 48  JSR $4808
FAA9  8a        TXA
FAAA  48        PHA
FAAB  98        TYA
FAAC  48        PHA
FAAD  ba        TSX
FAAE  bd 03 01  LDA $0103,X
FAB1  a2 06     LDX #$06
FAB3  a0 1c     LDY #$1c
FAB5  20 ed fa  JSR $faed
FAB8  ba        TSX
FAB9  bd 02 01  LDA $0102,X
FABC  a2 0a     LDX #$0a
FABE  a0 1c     LDY #$1c
FAC0  20 ed fa  JSR $faed
FAC3  ba        TSX
FAC4  bd 01 01  LDA $0101,X
FAC7  a2 0e     LDX #$0e
FAC9  a0 1c     LDY #$1c
FACB  20 ed fa  JSR $faed
FACE  ba        TSX
FACF  bd 04 01  LDA $0104,X
FAD2  a2 12     LDX #$12
FAD4  a0 1c     LDY #$1c
FAD6  20 ed fa  JSR $faed
FAD9  ba        TSX
FADA  8a        TXA
FADB  18        CLC
FADC  69 06     ADC #$06
FADE  a2 16     LDX #$16
FAE0  a0 1c     LDY #$1c
FAE2  20 ed fa  JSR $faed
FAE5  68        PLA
FAE6  a8        TAY
FAE7  68        PLA
FAE8  aa        TAX
FAE9  68        PLA
FAEA  28        PLP
FAEB  60        RTS
FAEC  e0 48     CPX #$48
FAEE  20 00 fa  JSR $fa00
FAF1  a9 20     LDA #$20
FAF3  20 89 f7  JSR $f789
FAF6  a9 02     LDA #$02
FAF8  20 76 f7  JSR $f776
FAFB  68        PLA
FAFC  20 53 f7  JSR $f753
FAFF  20 31 fa  JSR $fa31
FB02  60        RTS
FB03  cc 08 48  CPY $4808
FB06  a9 00     LDA #$00
FB08  85 e0     STA $e0
FB0A  a5 e0     LDA $e0
FB0C  f0 fc     BEQ $fb0a
FB0E  68        PLA
FB0F  28        PLP
FB10  60        RTS
FB11  c6 ff     DEC $ff
FB13  ff        ???
FB14  ff        ???
FB15  ff        ???
FB16  ff        ???
FB17  ff        ???
FB18  ff        ???
FB19  ff        ???
FB1A  ff        ???
FB1B  ff        ???
FB1C  ff        ???
FB1D  ff        ???
FB1E  ff        ???
FB1F  ff        ???
FB20  ff        ???
FB21  ff        ???
FB22  ff        ???
FB23  ff        ???
FB24  ff        ???
FB25  ff        ???
FB26  ff        ???
FB27  ff        ???
FB28  ff        ???
FB29  ff        ???
FB2A  ff        ???
FB2B  ff        ???
FB2C  ff        ???
FB2D  ff        ???
FB2E  ff        ???
FB2F  ff        ???
FB30  ff        ???
FB31  ff        ???
FB32  ff        ???
FB33  ff        ???
FB34  ff        ???
FB35  ff        ???
FB36  ff        ???
FB37  ff        ???
FB38  ff        ???
FB39  ff        ???
FB3A  ff        ???
FB3B  ff        ???
FB3C  ff        ???
FB3D  ff        ???
FB3E  ff        ???
FB3F  ff        ???
FB40  ff        ???
FB41  ff        ???
FB42  ff        ???
FB43  ff        ???
FB44  ff        ???
FB45  ff        ???
FB46  ff        ???
FB47  ff        ???
FB48  ff        ???
FB49  ff        ???
FB4A  ff        ???
FB4B  ff        ???
FB4C  ff        ???
FB4D  ff        ???
FB4E  ff        ???
FB4F  ff        ???
FB50  ff        ???
FB51  ff        ???
FB52  ff        ???
FB53  ff        ???
FB54  ff        ???
FB55  ff        ???
FB56  ff        ???
FB57  ff        ???
FB58  ff        ???
FB59  ff        ???
FB5A  ff        ???
FB5B  ff        ???
FB5C  ff        ???
FB5D  ff        ???
FB5E  ff        ???
FB5F  ff        ???
FB60  ff        ???
FB61  ff        ???
FB62  ff        ???
FB63  ff        ???
FB64  ff        ???
FB65  ff        ???
FB66  ff        ???
FB67  ff        ???
FB68  ff        ???
FB69  ff        ???
FB6A  ff        ???
FB6B  ff        ???
FB6C  ff        ???
FB6D  ff        ???
FB6E  ff        ???
FB6F  ff        ???
FB70  ff        ???
FB71  ff        ???
FB72  ff        ???
FB73  ff        ???
FB74  ff        ???
FB75  ff        ???
FB76  ff        ???
FB77  ff        ???
FB78  ff        ???
FB79  ff        ???
FB7A  ff        ???
FB7B  ff        ???
FB7C  ff        ???
FB7D  ff        ???
FB7E  ff        ???
FB7F  ff        ???
FB80  ff        ???
FB81  ff        ???
FB82  ff        ???
FB83  ff        ???
FB84  ff        ???
FB85  ff        ???
FB86  ff        ???
FB87  ff        ???
FB88  ff        ???
FB89  ff        ???
FB8A  ff        ???
FB8B  ff        ???
FB8C  ff        ???
FB8D  ff        ???
FB8E  ff        ???
FB8F  ff        ???
FB90  ff        ???
FB91  ff        ???
FB92  ff        ???
FB93  ff        ???
FB94  ff        ???
FB95  ff        ???
FB96  ff        ???
FB97  ff        ???
FB98  ff        ???
FB99  ff        ???
FB9A  ff        ???
FB9B  ff        ???
FB9C  ff        ???
FB9D  ff        ???
FB9E  ff        ???
FB9F  ff        ???
FBA0  ff        ???
FBA1  ff        ???
FBA2  ff        ???
FBA3  ff        ???
FBA4  ff        ???
FBA5  ff        ???
FBA6  ff        ???
FBA7  ff        ???
FBA8  ff        ???
FBA9  ff        ???
FBAA  ff        ???
FBAB  ff        ???
FBAC  ff        ???
FBAD  ff        ???
FBAE  ff        ???
FBAF  ff        ???
FBB0  ff        ???
FBB1  ff        ???
FBB2  ff        ???
FBB3  ff        ???
FBB4  ff        ???
FBB5  ff        ???
FBB6  ff        ???
FBB7  ff        ???
FBB8  ff        ???
FBB9  ff        ???
FBBA  ff        ???
FBBB  ff        ???
FBBC  ff        ???
FBBD  ff        ???
FBBE  ff        ???
FBBF  ff        ???
FBC0  ff        ???
FBC1  ff        ???
FBC2  ff        ???
FBC3  ff        ???
FBC4  ff        ???
FBC5  ff        ???
FBC6  ff        ???
FBC7  ff        ???
FBC8  ff        ???
FBC9  ff        ???
FBCA  ff        ???
FBCB  ff        ???
FBCC  ff        ???
FBCD  ff        ???
FBCE  ff        ???
FBCF  ff        ???
FBD0  ff        ???
FBD1  ff        ???
FBD2  ff        ???
FBD3  ff        ???
FBD4  ff        ???
FBD5  ff        ???
FBD6  ff        ???
FBD7  ff        ???
FBD8  ff        ???
FBD9  ff        ???
FBDA  ff        ???
FBDB  ff        ???
FBDC  ff        ???
FBDD  ff        ???
FBDE  ff        ???
FBDF  ff        ???
FBE0  ff        ???
FBE1  ff        ???
FBE2  ff        ???
FBE3  ff        ???
FBE4  ff        ???
FBE5  ff        ???
FBE6  ff        ???
FBE7  ff        ???
FBE8  ff        ???
FBE9  ff        ???
FBEA  ff        ???
FBEB  ff        ???
FBEC  ff        ???
FBED  ff        ???
FBEE  ff        ???
FBEF  ff        ???
FBF0  ff        ???
FBF1  ff        ???
FBF2  ff        ???
FBF3  ff        ???
FBF4  ff        ???
FBF5  ff        ???
FBF6  ff        ???
FBF7  ff        ???
FBF8  ff        ???
FBF9  ff        ???
FBFA  ff        ???
FBFB  ff        ???
FBFC  ff        ???
FBFD  ff        ???
FBFE  ff        ???
FBFF  ff        ???
FC00  ff        ???
FC01  ff        ???
FC02  ff        ???
FC03  ff        ???
FC04  ff        ???
FC05  ff        ???
FC06  ff        ???
FC07  ff        ???
FC08  ff        ???
FC09  ff        ???
FC0A  ff        ???
FC0B  ff        ???
FC0C  ff        ???
FC0D  ff        ???
FC0E  ff        ???
FC0F  ff        ???
FC10  ff        ???
FC11  ff        ???
FC12  ff        ???
FC13  ff        ???
FC14  ff        ???
FC15  ff        ???
FC16  ff        ???
FC17  ff        ???
FC18  ff        ???
FC19  ff        ???
FC1A  ff        ???
FC1B  ff        ???
FC1C  ff        ???
FC1D  ff        ???
FC1E  ff        ???
FC1F  ff        ???
FC20  ff        ???
FC21  ff        ???
FC22  ff        ???
FC23  ff        ???
FC24  ff        ???
FC25  ff        ???
FC26  ff        ???
FC27  ff        ???
FC28  ff        ???
FC29  ff        ???
FC2A  ff        ???
FC2B  ff        ???
FC2C  ff        ???
FC2D  ff        ???
FC2E  ff        ???
FC2F  ff        ???
FC30  ff        ???
FC31  ff        ???
FC32  ff        ???
FC33  ff        ???
FC34  ff        ???
FC35  ff        ???
FC36  ff        ???
FC37  ff        ???
FC38  ff        ???
FC39  ff        ???
FC3A  ff        ???
FC3B  ff        ???
FC3C  ff        ???
FC3D  ff        ???
FC3E  ff        ???
FC3F  ff        ???
FC40  ff        ???
FC41  ff        ???
FC42  ff        ???
FC43  ff        ???
FC44  ff        ???
FC45  ff        ???
FC46  ff        ???
FC47  ff        ???
FC48  ff        ???
FC49  ff        ???
FC4A  ff        ???
FC4B  ff        ???
FC4C  ff        ???
FC4D  ff        ???
FC4E  ff        ???
FC4F  ff        ???
FC50  ff        ???
FC51  ff        ???
FC52  ff        ???
FC53  ff        ???
FC54  ff        ???
FC55  ff        ???
FC56  ff        ???
FC57  ff        ???
FC58  ff        ???
FC59  ff        ???
FC5A  ff        ???
FC5B  ff        ???
FC5C  ff        ???
FC5D  ff        ???
FC5E  ff        ???
FC5F  ff        ???
FC60  ff        ???
FC61  ff        ???
FC62  ff        ???
FC63  ff        ???
FC64  ff        ???
FC65  ff        ???
FC66  ff        ???
FC67  ff        ???
FC68  ff        ???
FC69  ff        ???
FC6A  ff        ???
FC6B  ff        ???
FC6C  ff        ???
FC6D  ff        ???
FC6E  ff        ???
FC6F  ff        ???
FC70  ff        ???
FC71  ff        ???
FC72  ff        ???
FC73  ff        ???
FC74  ff        ???
FC75  ff        ???
FC76  ff        ???
FC77  ff        ???
FC78  ff        ???
FC79  ff        ???
FC7A  ff        ???
FC7B  ff        ???
FC7C  ff        ???
FC7D  ff        ???
FC7E  ff        ???
FC7F  ff        ???
FC80  ff        ???
FC81  ff        ???
FC82  ff        ???
FC83  ff        ???
FC84  ff        ???
FC85  ff        ???
FC86  ff        ???
FC87  ff        ???
FC88  ff        ???
FC89  ff        ???
FC8A  ff        ???
FC8B  ff        ???
FC8C  ff        ???
FC8D  ff        ???
FC8E  ff        ???
FC8F  ff        ???
FC90  ff        ???
FC91  ff        ???
FC92  ff        ???
FC93  ff        ???
FC94  ff        ???
FC95  ff        ???
FC96  ff        ???
FC97  ff        ???
FC98  ff        ???
FC99  ff        ???
FC9A  ff        ???
FC9B  ff        ???
FC9C  ff        ???
FC9D  ff        ???
FC9E  ff        ???
FC9F  ff        ???
FCA0  ff        ???
FCA1  ff        ???
FCA2  ff        ???
FCA3  ff        ???
FCA4  ff        ???
FCA5  ff        ???
FCA6  ff        ???
FCA7  ff        ???
FCA8  ff        ???
FCA9  ff        ???
FCAA  ff        ???
FCAB  ff        ???
FCAC  ff        ???
FCAD  ff        ???
FCAE  ff        ???
FCAF  ff        ???
FCB0  ff        ???
FCB1  ff        ???
FCB2  ff        ???
FCB3  ff        ???
FCB4  ff        ???
FCB5  ff        ???
FCB6  ff        ???
FCB7  ff        ???
FCB8  ff        ???
FCB9  ff        ???
FCBA  ff        ???
FCBB  ff        ???
FCBC  ff        ???
FCBD  ff        ???
FCBE  ff        ???
FCBF  ff        ???
FCC0  ff        ???
FCC1  ff        ???
FCC2  ff        ???
FCC3  ff        ???
FCC4  ff        ???
FCC5  ff        ???
FCC6  ff        ???
FCC7  ff        ???
FCC8  ff        ???
FCC9  ff        ???
FCCA  ff        ???
FCCB  ff        ???
FCCC  ff        ???
FCCD  ff        ???
FCCE  ff        ???
FCCF  ff        ???
FCD0  ff        ???
FCD1  ff        ???
FCD2  ff        ???
FCD3  ff        ???
FCD4  ff        ???
FCD5  ff        ???
FCD6  ff        ???
FCD7  ff        ???
FCD8  ff        ???
FCD9  ff        ???
FCDA  ff        ???
FCDB  ff        ???
FCDC  ff        ???
FCDD  ff        ???
FCDE  ff        ???
FCDF  ff        ???
FCE0  ff        ???
FCE1  ff        ???
FCE2  ff        ???
FCE3  ff        ???
FCE4  ff        ???
FCE5  ff        ???
FCE6  ff        ???
FCE7  ff        ???
FCE8  ff        ???
FCE9  ff        ???
FCEA  ff        ???
FCEB  ff        ???
FCEC  ff        ???
FCED  ff        ???
FCEE  ff        ???
FCEF  ff        ???
FCF0  ff        ???
FCF1  ff        ???
FCF2  ff        ???
FCF3  ff        ???
FCF4  ff        ???
FCF5  ff        ???
FCF6  ff        ???
FCF7  ff        ???
FCF8  ff        ???
FCF9  ff        ???
FCFA  ff        ???
FCFB  ff        ???
FCFC  ff        ???
FCFD  ff        ???
FCFE  ff        ???
FCFF  ff        ???
FD00  ff        ???
FD01  ff        ???
FD02  ff        ???
FD03  ff        ???
FD04  ff        ???
FD05  ff        ???
FD06  ff        ???
FD07  ff        ???
FD08  ff        ???
FD09  ff        ???
FD0A  ff        ???
FD0B  ff        ???
FD0C  ff        ???
FD0D  ff        ???
FD0E  ff        ???
FD0F  ff        ???
FD10  ff        ???
FD11  ff        ???
FD12  ff        ???
FD13  ff        ???
FD14  ff        ???
FD15  ff        ???
FD16  ff        ???
FD17  ff        ???
FD18  ff        ???
FD19  ff        ???
FD1A  ff        ???
FD1B  ff        ???
FD1C  ff        ???
FD1D  ff        ???
FD1E  ff        ???
FD1F  ff        ???
FD20  ff        ???
FD21  ff        ???
FD22  ff        ???
FD23  ff        ???
FD24  ff        ???
FD25  ff        ???
FD26  ff        ???
FD27  ff        ???
FD28  ff        ???
FD29  ff        ???
FD2A  ff        ???
FD2B  ff        ???
FD2C  ff        ???
FD2D  ff        ???
FD2E  ff        ???
FD2F  ff        ???
FD30  ff        ???
FD31  ff        ???
FD32  ff        ???
FD33  ff        ???
FD34  ff        ???
FD35  ff        ???
FD36  ff        ???
FD37  ff        ???
FD38  ff        ???
FD39  ff        ???
FD3A  ff        ???
FD3B  ff        ???
FD3C  ff        ???
FD3D  ff        ???
FD3E  ff        ???
FD3F  ff        ???
FD40  ff        ???
FD41  ff        ???
FD42  ff        ???
FD43  ff        ???
FD44  ff        ???
FD45  ff        ???
FD46  ff        ???
FD47  ff        ???
FD48  ff        ???
FD49  ff        ???
FD4A  ff        ???
FD4B  ff        ???
FD4C  ff        ???
FD4D  ff        ???
FD4E  ff        ???
FD4F  ff        ???
FD50  ff        ???
FD51  ff        ???
FD52  ff        ???
FD53  ff        ???
FD54  ff        ???
FD55  ff        ???
FD56  ff        ???
FD57  ff        ???
FD58  ff        ???
FD59  ff        ???
FD5A  ff        ???
FD5B  ff        ???
FD5C  ff        ???
FD5D  ff        ???
FD5E  ff        ???
FD5F  ff        ???
FD60  ff        ???
FD61  ff        ???
FD62  ff        ???
FD63  ff        ???
FD64  ff        ???
FD65  ff        ???
FD66  ff        ???
FD67  ff        ???
FD68  ff        ???
FD69  ff        ???
FD6A  ff        ???
FD6B  ff        ???
FD6C  ff        ???
FD6D  ff        ???
FD6E  ff        ???
FD6F  ff        ???
FD70  ff        ???
FD71  ff        ???
FD72  ff        ???
FD73  ff        ???
FD74  ff        ???
FD75  ff        ???
FD76  ff        ???
FD77  ff        ???
FD78  ff        ???
FD79  ff        ???
FD7A  ff        ???
FD7B  ff        ???
FD7C  ff        ???
FD7D  ff        ???
FD7E  ff        ???
FD7F  ff        ???
FD80  ff        ???
FD81  ff        ???
FD82  ff        ???
FD83  ff        ???
FD84  ff        ???
FD85  ff        ???
FD86  ff        ???
FD87  ff        ???
FD88  ff        ???
FD89  ff        ???
FD8A  ff        ???
FD8B  ff        ???
FD8C  ff        ???
FD8D  ff        ???
FD8E  ff        ???
FD8F  ff        ???
FD90  ff        ???
FD91  ff        ???
FD92  ff        ???
FD93  ff        ???
FD94  ff        ???
FD95  ff        ???
FD96  ff        ???
FD97  ff        ???
FD98  ff        ???
FD99  ff        ???
FD9A  ff        ???
FD9B  ff        ???
FD9C  ff        ???
FD9D  ff        ???
FD9E  ff        ???
FD9F  ff        ???
FDA0  ff        ???
FDA1  ff        ???
FDA2  ff        ???
FDA3  ff        ???
FDA4  ff        ???
FDA5  ff        ???
FDA6  ff        ???
FDA7  ff        ???
FDA8  ff        ???
FDA9  ff        ???
FDAA  ff        ???
FDAB  ff        ???
FDAC  ff        ???
FDAD  ff        ???
FDAE  ff        ???
FDAF  ff        ???
FDB0  ff        ???
FDB1  ff        ???
FDB2  ff        ???
FDB3  ff        ???
FDB4  ff        ???
FDB5  ff        ???
FDB6  ff        ???
FDB7  ff        ???
FDB8  ff        ???
FDB9  ff        ???
FDBA  ff        ???
FDBB  ff        ???
FDBC  ff        ???
FDBD  ff        ???
FDBE  ff        ???
FDBF  ff        ???
FDC0  ff        ???
FDC1  ff        ???
FDC2  ff        ???
FDC3  ff        ???
FDC4  ff        ???
FDC5  ff        ???
FDC6  ff        ???
FDC7  ff        ???
FDC8  ff        ???
FDC9  ff        ???
FDCA  ff        ???
FDCB  ff        ???
FDCC  ff        ???
FDCD  ff        ???
FDCE  ff        ???
FDCF  ff        ???
FDD0  ff        ???
FDD1  ff        ???
FDD2  ff        ???
FDD3  ff        ???
FDD4  ff        ???
FDD5  ff        ???
FDD6  ff        ???
FDD7  ff        ???
FDD8  ff        ???
FDD9  ff        ???
FDDA  ff        ???
FDDB  ff        ???
FDDC  ff        ???
FDDD  ff        ???
FDDE  ff        ???
FDDF  ff        ???
FDE0  ff        ???
FDE1  ff        ???
FDE2  ff        ???
FDE3  ff        ???
FDE4  ff        ???
FDE5  ff        ???
FDE6  ff        ???
FDE7  ff        ???
FDE8  ff        ???
FDE9  ff        ???
FDEA  ff        ???
FDEB  ff        ???
FDEC  ff        ???
FDED  ff        ???
FDEE  ff        ???
FDEF  ff        ???
FDF0  ff        ???
FDF1  ff        ???
FDF2  ff        ???
FDF3  ff        ???
FDF4  ff        ???
FDF5  ff        ???
FDF6  ff        ???
FDF7  ff        ???
FDF8  ff        ???
FDF9  ff        ???
FDFA  ff        ???
FDFB  ff        ???
FDFC  ff        ???
FDFD  ff        ???
FDFE  ff        ???
FDFF  ff        ???
FE00  ff        ???
FE01  ff        ???
FE02  ff        ???
FE03  ff        ???
FE04  ff        ???
FE05  ff        ???
FE06  ff        ???
FE07  ff        ???
FE08  ff        ???
FE09  ff        ???
FE0A  ff        ???
FE0B  ff        ???
FE0C  ff        ???
FE0D  ff        ???
FE0E  ff        ???
FE0F  ff        ???
FE10  ff        ???
FE11  ff        ???
FE12  ff        ???
FE13  ff        ???
FE14  ff        ???
FE15  ff        ???
FE16  ff        ???
FE17  ff        ???
FE18  ff        ???
FE19  ff        ???
FE1A  ff        ???
FE1B  ff        ???
FE1C  ff        ???
FE1D  ff        ???
FE1E  ff        ???
FE1F  ff        ???
FE20  ff        ???
FE21  ff        ???
FE22  ff        ???
FE23  ff        ???
FE24  ff        ???
FE25  ff        ???
FE26  ff        ???
FE27  ff        ???
FE28  ff        ???
FE29  ff        ???
FE2A  ff        ???
FE2B  ff        ???
FE2C  ff        ???
FE2D  ff        ???
FE2E  ff        ???
FE2F  ff        ???
FE30  ff        ???
FE31  ff        ???
FE32  ff        ???
FE33  ff        ???
FE34  ff        ???
FE35  ff        ???
FE36  ff        ???
FE37  ff        ???
FE38  ff        ???
FE39  ff        ???
FE3A  ff        ???
FE3B  ff        ???
FE3C  ff        ???
FE3D  ff        ???
FE3E  ff        ???
FE3F  ff        ???
FE40  ff        ???
FE41  ff        ???
FE42  ff        ???
FE43  ff        ???
FE44  ff        ???
FE45  ff        ???
FE46  ff        ???
FE47  ff        ???
FE48  ff        ???
FE49  ff        ???
FE4A  ff        ???
FE4B  ff        ???
FE4C  ff        ???
FE4D  ff        ???
FE4E  ff        ???
FE4F  ff        ???
FE50  ff        ???
FE51  ff        ???
FE52  ff        ???
FE53  ff        ???
FE54  ff        ???
FE55  ff        ???
FE56  ff        ???
FE57  ff        ???
FE58  ff        ???
FE59  ff        ???
FE5A  ff        ???
FE5B  ff        ???
FE5C  ff        ???
FE5D  ff        ???
FE5E  ff        ???
FE5F  ff        ???
FE60  ff        ???
FE61  ff        ???
FE62  ff        ???
FE63  ff        ???
FE64  ff        ???
FE65  ff        ???
FE66  ff        ???
FE67  ff        ???
FE68  ff        ???
FE69  ff        ???
FE6A  ff        ???
FE6B  ff        ???
FE6C  ff        ???
FE6D  ff        ???
FE6E  ff        ???
FE6F  ff        ???
FE70  ff        ???
FE71  ff        ???
FE72  ff        ???
FE73  ff        ???
FE74  ff        ???
FE75  ff        ???
FE76  ff        ???
FE77  ff        ???
FE78  ff        ???
FE79  ff        ???
FE7A  ff        ???
FE7B  ff        ???
FE7C  ff        ???
FE7D  ff        ???
FE7E  ff        ???
FE7F  ff        ???
FE80  ff        ???
FE81  ff        ???
FE82  ff        ???
FE83  ff        ???
FE84  ff        ???
FE85  ff        ???
FE86  ff        ???
FE87  ff        ???
FE88  ff        ???
FE89  ff        ???
FE8A  ff        ???
FE8B  ff        ???
FE8C  ff        ???
FE8D  ff        ???
FE8E  ff        ???
FE8F  ff        ???
FE90  ff        ???
FE91  ff        ???
FE92  ff        ???
FE93  ff        ???
FE94  ff        ???
FE95  ff        ???
FE96  ff        ???
FE97  ff        ???
FE98  ff        ???
FE99  ff        ???
FE9A  ff        ???
FE9B  ff        ???
FE9C  ff        ???
FE9D  ff        ???
FE9E  ff        ???
FE9F  ff        ???
FEA0  ff        ???
FEA1  ff        ???
FEA2  ff        ???
FEA3  ff        ???
FEA4  ff        ???
FEA5  ff        ???
FEA6  ff        ???
FEA7  ff        ???
FEA8  ff        ???
FEA9  ff        ???
FEAA  ff        ???
FEAB  ff        ???
FEAC  ff        ???
FEAD  ff        ???
FEAE  ff        ???
FEAF  ff        ???
FEB0  ff        ???
FEB1  ff        ???
FEB2  ff        ???
FEB3  ff        ???
FEB4  ff        ???
FEB5  ff        ???
FEB6  ff        ???
FEB7  ff        ???
FEB8  ff        ???
FEB9  ff        ???
FEBA  ff        ???
FEBB  ff        ???
FEBC  ff        ???
FEBD  ff        ???
FEBE  ff        ???
FEBF  ff        ???
FEC0  ff        ???
FEC1  ff        ???
FEC2  ff        ???
FEC3  ff        ???
FEC4  ff        ???
FEC5  ff        ???
FEC6  ff        ???
FEC7  ff        ???
FEC8  ff        ???
FEC9  ff        ???
FECA  ff        ???
FECB  ff        ???
FECC  ff        ???
FECD  ff        ???
FECE  ff        ???
FECF  ff        ???
FED0  ff        ???
FED1  ff        ???
FED2  ff        ???
FED3  ff        ???
FED4  ff        ???
FED5  ff        ???
FED6  ff        ???
FED7  ff        ???
FED8  ff        ???
FED9  ff        ???
FEDA  ff        ???
FEDB  ff        ???
FEDC  ff        ???
FEDD  ff        ???
FEDE  ff        ???
FEDF  ff        ???
FEE0  ff        ???
FEE1  ff        ???
FEE2  ff        ???
FEE3  ff        ???
FEE4  ff        ???
FEE5  ff        ???
FEE6  ff        ???
FEE7  ff        ???
FEE8  ff        ???
FEE9  ff        ???
FEEA  ff        ???
FEEB  ff        ???
FEEC  ff        ???
FEED  ff        ???
FEEE  ff        ???
FEEF  ff        ???
FEF0  ff        ???
FEF1  ff        ???
FEF2  ff        ???
FEF3  ff        ???
FEF4  ff        ???
FEF5  ff        ???
FEF6  ff        ???
FEF7  ff        ???
FEF8  ff        ???
FEF9  ff        ???
FEFA  ff        ???
FEFB  ff        ???
FEFC  ff        ???
FEFD  ff        ???
FEFE  ff        ???
FEFF  ff        ???
FF00  20 8d a2  JSR $a28d
FF03  00        BRK
FF04  20 2c ff  JSR $ff2c
FF07  4c 15 f8  JMP $f815
FF0A  4c b9 48  JMP $48b9
FF0D  a5 b4     LDA $b4
FF0F  29 10     AND #$10
FF11  4a        LSR A
FF12  4a        LSR A
FF13  4a        LSR A
FF14  4a        LSR A
FF15  09 04     ORA #$04
FF17  aa        TAX
FF18  68        PLA
FF19  20 2c ff  JSR $ff2c
FF1C  20 38 f2  JSR $f238
FF1F  08        PHP
FF20  48        PHA
FF21  a5 b4     LDA $b4
FF23  29 10     AND #$10
FF25  4a        LSR A
FF26  4a        LSR A
FF27  4a        LSR A
FF28  4a        LSR A
FF29  aa        TAX
FF2A  68        PLA
FF2B  28        PLP
FF2C  48        PHA
FF2D  a9 00     LDA #$00
FF2F  8d 01 41  STA $4101
FF32  bd 4d ff  LDA $ff4d,X
FF35  8d 02 41  STA $4102
FF38  a9 00     LDA #$00
FF3A  8d 03 41  STA $4103
FF3D  8d 00 41  STA $4100
FF40  a9 ff     LDA #$ff
FF42  8d 03 41  STA $4103
FF45  bd 55 ff  LDA $ff55,X
FF48  ea        NOP
FF49  ea        NOP
FF4A  ea        NOP
FF4B  68        PLA
FF4C  60        RTS
FF4D  00        BRK
FF4E  10 20     BPL $ff70
FF50  30 40     BMI $ff92
FF52  50 60     BVC $ffb4
FF54  70 27     BVS $ff7d
FF56  26 25     ROL $25
FF58  24 03     BIT $03
FF5A  02        ???
FF5B  01 00     ORA ($00,X)
FF5D  ff        ???
FF5E  ff        ???
FF5F  ff        ???
FF60  ff        ???
FF61  ff        ???
FF62  ff        ???
FF63  ff        ???
FF64  ff        ???
FF65  ff        ???
FF66  ff        ???
FF67  ff        ???
FF68  ff        ???
FF69  ff        ???
FF6A  ff        ???
FF6B  ff        ???
FF6C  ff        ???
FF6D  ff        ???
FF6E  ff        ???
FF6F  ff        ???
FF70  20 48 20  JSR $2048
FF73  7b        ???
FF74  ff        ???
FF75  68        PLA
FF76  20 ab ff  JSR $ffab
FF79  60        RTS
FF7A  4c 18 a5  JMP $a518
FF7D  86 69     STX $69
FF7F  48        PHA
FF80  85 86     STA $86
FF82  a5 87     LDA $87
FF84  69 92     ADC #$92
FF86  85 87     STA $87
FF88  a0 03     LDY #$03
FF8A  a5 86     LDA $86
FF8C  4a        LSR A
FF8D  66 87     ROR $87
FF8F  66 86     ROR $86
FF91  88        DEY
FF92  d0 f6     BNE $ff8a
FF94  a5 86     LDA $86
FF96  a4 87     LDY $87
FF98  60        RTS
FF99  10 48     BPL $ffe3
FF9B  a5 86     LDA $86
FF9D  45 d0     EOR $d0
FF9F  85 86     STA $86
FFA1  a5 87     LDA $87
FFA3  45 d1     EOR $d1
FFA5  85 87     STA $87
FFA7  68        PLA
FFA8  60        RTS
FFA9  8d b9 85  STA $85b9
FFAC  90 a9     BCC $ff57
FFAE  00        BRK
FFAF  85 91     STA $91
FFB1  98        TYA
FFB2  a4 90     LDY $90
FFB4  f0 16     BEQ $ffcc
FFB6  30 04     BMI $ffbc
FFB8  06 90     ASL $90
FFBA  10 fc     BPL $ffb8
FFBC  c5 90     CMP $90
FFBE  90 02     BCC $ffc2
FFC0  e5 90     SBC $90
FFC2  26 91     ROL $91
FFC4  46 90     LSR $90
FFC6  c4 90     CPY $90
FFC8  90 f2     BCC $ffbc
FFCA  f0 f0     BEQ $ffbc
FFCC  a4 91     LDY $91
FFCE  60        RTS
FFCF  be a0 39  LDX $39a0,Y
FFD2  a2 15     LDX #$15
FFD4  ca        DEX
FFD5  d0 fd     BNE $ffd4
FFD7  38        SEC
FFD8  e9 01     SBC #$01
FFDA  d0 f6     BNE $ffd2
FFDC  60        RTS
FFDD  07        ???
FFDE  4d 35 76  EOR $7635
FFE1  c6 32     DEC $32
FFE3  ff        ???
FFE4  ff        ???
FFE5  ff        ???
FFE6  ff        ???
FFE7  ff        ???
FFE8  ff        ???
FFE9  ff        ???
FFEA  ff        ???
FFEB  ff        ???
FFEC  ff        ???
FFED  ff        ???
FFEE  ff        ???
FFEF  ff        ???
FFF0  ff        ???
FFF1  ff        ???
FFF2  ff        ???
FFF3  ff        ???
FFF4  ff        ???
FFF5  ff        ???
FFF6  ff        ???
FFF7  ff        ???
FFF8  60        RTS
FFF9  40        RTI
FFFA  49 f9     EOR #$f9
FFFC  02        ???
FFFD  ff        ???
FFFE  f8        SED
FFFF  ff        ???