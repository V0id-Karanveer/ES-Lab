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
	ldr r0,=arr
	ldr r3,=arr
	add r3,#36
	mov r2,#5
back ldr r1,[r0]
	ldr r4,[r3]
	mov r5,r1
	mov r6,r4
	str r5,[r3],#-4
	str r6,[r0],#4
	subs r2,#1
	bne back
stop b stop
	area data_seg,data,readwrite
arr dcd 0,0,0,0,0,0,0,0,0,0
	
	
	
	