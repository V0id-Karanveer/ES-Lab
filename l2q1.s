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
	mov r2,#10
	ldr r3,=res
back ldr r1,[r0],#4
	adds r5,r1
	subs r2,#1
	bne back
	str r5,[r3]
	adc r6,0
	ldr r7,=carry
	str r6,[r7]
stop b stop
arr dcd 0x1,0x2,0x3,0x4,0x5,0x6,0x7,0x8,0x9,0xA
	AREA DATA_SEG,DATA,READWRITE
carry dcd 0
res dcd 0

	
	
	
	
	