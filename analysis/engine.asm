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
8070  a9 ff     LDA #$ff
8072  60        RTS
8074  a6 c1     LDX $c1
8076  b5 00     LDA $00,X
8078  c9 20     CMP #$20
807A  f0 57     BEQ $80d3
807C  a9 01     LDA #$01
807E  3d 60 81  AND $8160,X
8081  60        RTS
8083  a6 c1     LDX $c1
8085  b5 00     LDA $00,X
8087  c9 10     CMP #$10
8089  f0 48     BEQ $80d3
808B  a9 10     LDA #$10
808D  3d 60 81  AND $8160,X
8090  60        RTS
8094  a6 c1     LDX $c1
8096  a9 40     LDA #$40
8098  3d ea 81  AND $81ea,X
809B  60        RTS
809D  a6 c1     LDX $c1
809F  a9 80     LDA #$80
80A1  3d ea 81  AND $81ea,X
80A4  60        RTS
80A6  a6 c1     LDX $c1
80A8  a9 10     LDA #$10
80AA  3d ea 81  AND $81ea,X
80AD  60        RTS
80B0  b9 54 84  LDA $8454,Y
80B3  18        CLC
80B4  65 c0     ADC $c0
80B6  aa        TAX
80B7  b5 00     LDA $00,X
80B9  60        RTS
80BC  a6 c1     LDX $c1
80BE  a9 20     LDA #$20
80C0  3d ea 81  AND $81ea,X
80C3  d0 ad     BNE $8072
80C5  b9 54 84  LDA $8454,Y
80C8  18        CLC
80C9  65 c0     ADC $c0
80CB  aa        TAX
80CC  b5 00     LDA $00,X
80CE  60        RTS
80D1  a6 c1     LDX $c1
80D3  8a        TXA
80D4  38        SEC
80D5  f9 54 84  SBC $8454,Y
80D8  aa        TAX
80D9  b5 00     LDA $00,X
80DB  f0 f6     BEQ $80d3
80DD  e4 c0     CPX $c0
80DF  60        RTS
80E2  a6 c1     LDX $c1
80E4  b5 00     LDA $00,X
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
8555  48        PHA
8556  8a        TXA
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
857C  68        PLA
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
85DF  a2 07     LDX #$07
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
8607  a2 f1     LDX #$f1
8609  a0 0f     LDY #$0f
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
863F  a2 f1     LDX #$f1
8641  a0 0f     LDY #$0f
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
8678  ad 72 07  LDA $0772
867B  18        CLC
867C  69 32     ADC #$32
867E  8d 72 06  STA $0672
8681  ad f2 07  LDA $07f2
8684  69 00     ADC #$00
8686  8d f2 06  STA $06f2
8689  4c 19 86  JMP $8619
8690  ad 00 04  LDA $0400
8693  85 c0     STA $c0
8695  ad 08 04  LDA $0408
8698  85 c1     STA $c1
869A  60        RTS
869C  a9 ff     LDA #$ff
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
86F3  a5 c7     LDA $c7
86F5  29 10     AND #$10
86F7  f0 04     BEQ $86fd
86F9  4c fb b1  JMP $b1fb
86FD  4c 83 b5  JMP $b583
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
8714  b9 84 00  LDA $0084,Y
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
872B  68        PLA
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
8769  68        PLA
876A  a8        TAY
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
8783  68        PLA
8784  68        PLA
8785  aa        TAX
8786  e8        INX
8787  8a        TXA
8788  29 0f     AND #$0f
878A  d0 ac     BNE $8738
878C  60        RTS
878E  20 49 80  JSR $8049
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
87BC  68        PLA
87BD  aa        TAX
87BE  e8        INX
87BF  8a        TXA
87C0  29 0f     AND #$0f
87C2  d0 e1     BNE $87a5
87C4  a5 c7     LDA $c7
87C6  20 7e b9  JSR $b97e
87C9  a9 00     LDA #$00
87CB  60        RTS
87CE  ae 00 05  LDX $0500
87D1  a5 c0     LDA $c0
87D3  9d 01 05  STA $0501,X
87D6  a5 c1     LDA $c1
87D8  9d 81 05  STA $0581,X
87DB  ee 00 05  INC $0500
87DE  60        RTS
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
903B  86 c1     STX $c1
903D  a5 b3     LDA $b3
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
92AF  e6 cc     INC $cc
92B1  d0 02     BNE $92b5
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
92C9  9d 72 05  STA $0572,X
92CC  bc 74 b1  LDY $b174,X
92CF  30 05     BMI $92d6
92D1  a9 ff     LDA #$ff
92D3  99 00 04  STA $0400,Y
92D6  a5 94     LDA $94
92D8  10 08     BPL $92e2
92DA  8a        TXA
92DB  69 20     ADC #$20
92DD  9d f2 07  STA $07f2,X
92E0  60        RTS
92E2  a9 10     LDA #$10
92E4  9d f2 07  STA $07f2,X
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
9303  a6 c6     LDX $c6
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
9356  85 c0     STA $c0
9358  bd 08 04  LDA $0408,X
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
93B3  a5 cf     LDA $cf
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
93EA  a5 cf     LDA $cf
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
9450  a6 a7     LDX $a7
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
94B9  a6 94     LDX $94
94BB  30 5a     BMI $9517
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
9520  86 c0     STX $c0
9522  b5 ff     LDA $ff,X
9524  f0 05     BEQ $952b
9526  4c b7 95  JMP $95b7
952B  a9 ff     LDA #$ff
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
95C0  a9 01     LDA #$01
95C2  18        CLC
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
9755  86 c0     STX $c0
9757  b5 ff     LDA $ff,X
9759  f0 05     BEQ $9760
975B  4c ec 97  JMP $97ec
9760  a9 ff     LDA #$ff
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
97F5  a9 01     LDA #$01
97F7  18        CLC
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
998A  86 c0     STX $c0
998C  b5 ff     LDA $ff,X
998E  f0 05     BEQ $9995
9990  4c 21 9a  JMP $9a21
9995  a9 ff     LDA #$ff
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
9A2A  a9 01     LDA #$01
9A2C  18        CLC
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
9BBF  86 c0     STX $c0
9BC1  b5 ff     LDA $ff,X
9BC3  f0 05     BEQ $9bca
9BC5  4c 56 9c  JMP $9c56
9BCA  a9 ff     LDA #$ff
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
9C5F  a9 01     LDA #$01
9C61  18        CLC
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
9DF3  86 c0     STX $c0
9DF5  b5 ff     LDA $ff,X
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
9E8D  86 c0     STX $c0
9E8F  b5 ff     LDA $ff,X
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
A211  e6 cc     INC $cc
A213  d0 02     BNE $a217
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
A22B  9d 72 05  STA $0572,X
A22E  bc 74 b1  LDY $b174,X
A231  30 05     BMI $a238
A233  a9 ff     LDA #$ff
A235  99 00 04  STA $0400,Y
A238  a5 a4     LDA $a4
A23A  10 09     BPL $a245
A23C  a9 e0     LDA #$e0
A23E  e5 c6     SBC $c6
A240  9d f2 07  STA $07f2,X
A243  60        RTS
A245  a9 f0     LDA #$f0
A247  9d f2 07  STA $07f2,X
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
A266  a6 c6     LDX $c6
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
A2B9  85 c0     STA $c0
A2BB  bd 08 04  LDA $0408,X
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
A316  a5 cf     LDA $cf
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
A34D  a5 cf     LDA $cf
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
A3B3  a6 97     LDX $97
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
A41C  a6 a4     LDX $a4
A41E  30 5a     BMI $a47a
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
A483  86 c0     STX $c0
A485  b5 ff     LDA $ff,X
A487  f0 05     BEQ $a48e
A489  4c 1a a5  JMP $a51a
A48E  a9 ff     LDA #$ff
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
A523  a9 01     LDA #$01
A525  18        CLC
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
A6B8  86 c0     STX $c0
A6BA  b5 ff     LDA $ff,X
A6BC  f0 05     BEQ $a6c3
A6BE  4c 4f a7  JMP $a74f
A6C3  a9 ff     LDA #$ff
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
A758  a9 01     LDA #$01
A75A  18        CLC
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
A8ED  86 c0     STX $c0
A8EF  b5 ff     LDA $ff,X
A8F1  f0 05     BEQ $a8f8
A8F3  4c 84 a9  JMP $a984
A8F8  a9 ff     LDA #$ff
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
A98D  a9 01     LDA #$01
A98F  18        CLC
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
AB22  86 c0     STX $c0
AB24  b5 ff     LDA $ff,X
AB26  f0 05     BEQ $ab2d
AB28  4c b9 ab  JMP $abb9
AB2D  a9 ff     LDA #$ff
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
ABC2  a9 01     LDA #$01
ABC4  18        CLC
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
AD56  86 c0     STX $c0
AD58  b5 ff     LDA $ff,X
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
ADF0  86 c0     STX $c0
ADF2  b5 ff     LDA $ff,X
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
B1C0  a6 c6     LDX $c6
B1C2  bd b1 04  LDA $04b1,X
B1C5  bc c1 04  LDY $04c1,X
B1C8  aa        TAX
B1C9  b5 00     LDA $00,X
B1CB  99 00 00  STA $0000,Y
B1CE  a9 00     LDA #$00
B1D0  95 00     STA $00,X
B1D2  68        PLA
B1D3  85 c1     STA $c1
B1D5  60        RTS
B1D7  a6 c6     LDX $c6
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
B1FB  a6 c6     LDX $c6
B1FD  bd c0 04  LDA $04c0,X
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
B27F  a6 c6     LDX $c6
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
B298  4c 92 b3  JMP $b392
B29C  38        SEC
B29D  bd 72 07  LDA $0772,X
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
B36A  a6 c6     LDX $c6
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
B422  a6 c6     LDX $c6
B424  bd 71 06  LDA $0671,X
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
B477  bd 73 07  LDA $0773,X
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
B498  b9 18 04  LDA $0418,Y
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
B4B8  38        SEC
B4B9  bd 72 07  LDA $0772,X
B4BC  fd 71 06  SBC $0671,X
B4BF  bd f2 07  LDA $07f2,X
B4C2  fd f1 06  SBC $06f1,X
B4C5  b0 0e     BCS $b4d5
B4C7  bd 72 07  LDA $0772,X
B4CA  9d 72 06  STA $0672,X
B4CD  bd f2 07  LDA $07f2,X
B4D0  9d f2 06  STA $06f2,X
B4D3  60        RTS
B4D5  e0 08     CPX #$08
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
B4F7  bd 90 04  LDA $0490,X
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
B514  a5 c1     LDA $c1
B516  48        PHA
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
B548  a6 c6     LDX $c6
B54A  bd b1 04  LDA $04b1,X
B54D  bc c1 04  LDY $04c1,X
B550  aa        TAX
B551  b5 00     LDA $00,X
B553  99 00 00  STA $0000,Y
B556  a9 00     LDA #$00
B558  95 00     STA $00,X
B55A  68        PLA
B55B  85 c1     STA $c1
B55D  60        RTS
B55F  a6 c6     LDX $c6
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
B583  a6 c6     LDX $c6
B585  bd c0 04  LDA $04c0,X
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
B607  a6 c6     LDX $c6
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
B620  4c 1a b7  JMP $b71a
B624  38        SEC
B625  bd 72 06  LDA $0672,X
B628  fd 72 07  SBC $0772,X
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
B6F2  a6 c6     LDX $c6
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
B7AA  a6 c6     LDX $c6
B7AC  bd 71 06  LDA $0671,X
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
B7FF  bd 73 07  LDA $0773,X
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
B820  b9 18 04  LDA $0418,Y
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
B840  38        SEC
B841  bd 71 06  LDA $0671,X
B844  fd 72 07  SBC $0772,X
B847  bd f1 06  LDA $06f1,X
B84A  fd f2 07  SBC $07f2,X
B84D  b0 0e     BCS $b85d
B84F  bd 72 07  LDA $0772,X
B852  9d 72 06  STA $0672,X
B855  bd f2 07  LDA $07f2,X
B858  9d f2 06  STA $06f2,X
B85B  60        RTS
B85D  e0 08     CPX #$08
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
B87F  bd 90 04  LDA $0490,X
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
B89C  29 10     AND #$10
B89E  f0 70     BEQ $b910
B8A0  a6 c6     LDX $c6
B8A2  a5 c8     LDA $c8
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
B910  a6 c6     LDX $c6
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
B9AB  a6 c6     LDX $c6
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