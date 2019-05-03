.ORIG x3000
        LD  R2 LOOP_COUNTER
      		                ;------------
REPEAT  LD  R0 LOCO1	        ;R3 stores the value of the address R0 
        BRz FINISH		;Branch if null
       	                        ;------------       
SHIFT   ADD R3, R0, #0
        ADD R0, R0, R0   
                                ; ------
        ADD R3, R3, #0
        BRzp DECREME
        ADD R0, R0, #1
                                ;-----------
DECREME ADD R2, R2, #-1
        BRp SHIFT
        			;-------------
FINISH  ST R0 LOCO2                                 	
				;--------------
        HALT
LOCO1   .BLKW 1
LOCO2   .BLKW 2 
LOOP_COUNTER .FILL x0006

 .END