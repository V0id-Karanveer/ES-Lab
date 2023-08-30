	AREA    RESET, DATA, READONLY
    EXPORT  __Vectors

__Vectors 
	DCD  0x100000FF     ; stack pointer value when stack is empty
    DCD  Reset_Handler  ; reset vector
  
    ALIGN

	AREA mycode, CODE, READONLY
	EXPORT Reset_Handler
	ENTRY
	
Reset_Handler
	ldr r0,=src
	add r0,#36
	ldr r1,=src
	add r1,#44
	mov r2,#10
back ldr r4,[r0],#-4
	str r4,[r1],#-4
	subs r2,#1
	bne back
stop b stop
	area data_seg,data,readwrite
src dcd 0x1,0x2,0x3,0x4,0x5,0x6,0x7,0x8,0x9,0x0

	
	