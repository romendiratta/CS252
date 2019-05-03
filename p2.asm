.ORIG x3000
	LD    R2,TERM   ; Load -7
	LD    R3,ASCII  ; Load ASCII difference
AGAIN	TRAP  x23       ; Request keyboard input
	ADD   R1,R2,R0  ; Test for terminating
	BRz   EXIT      ; Character

	LD R4, NNINETYSIX
	ADD   R5,R4,R0  ; Check for lowercase
	BRp   EXIT

	ADD   R0,R0,R3  ; Change to lowercase
	TRAP  x21       ; Output to the monitor
	BRnzp AGAIN     ; Repeat   

NNINETYSIX .FILL xFFA0  	
TERM	.FILL xFFC9     ; FFC9 = -7 (negative of ASCII 7)
ASCII	.FILL x0020
EXIT	TRAP  x25       ; Halt
	.END