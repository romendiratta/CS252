.ORIG x3000
        LD  R1 INI
        LD  R5 FINAL
        LD  R6 TOLOWER
        LD  R7 TOUPPER
      		                ;------------
REPEAT  LDR R3, R1, #0	        ;R3 stores the value of the address 
        BRz FINISH		;Branch if null
        			;------------
        LD R4 SIXTYFIVEMINUS
        ADD R0, R3, R4
        BRn STORAGE
        
        LD R4 ONETWENTYTWOMINUS
        ADD R0, R3, R4
        BRp STORAGE
        
        LD R4NINETYMINUS       
        ADD R0, R3, R4
        BRn LOWER
        
        LD R4 NINETYSIXMINUS 
        ADD R0, R3, R4 
        BRp UPPER
        BRnzp STORAGE
        			;------------
LOWER   ADD R3, R3, R6
        BRnzp STORAGE
UPPER   ADD R3, R3, R7
        BRnzp STORAGE
        			;-------------
STORAGE STR R3, R5, #0 
        ADD R5, R5, #1
        ADD R1, R1, #1
        BR  REPEAT		;Always branch
        			;--------------
FINISH  STR R3, R5, #0 
        HALT
SIXTYFIVEMINUS.FILL xFFBF 
ONETWENTYTWOMINUS .FILL xFF86
NINETYMINUS .FILL xFFA6
NINETYSIXMINUS.FILL xFFA0 
TOLOWER .FILL x0020
TOUPPER .FILL xFFE0
INI     .FILL x5000
FINAL   .FILL x5100
 .END