	
	.global _start #putting it in globAL symbol table for linker. this tells the assembler to make this label visible to the linker
	.text #code lives in text section

_start: #a label: point in ur code so u can refer to it in other place. a fucntion name would be a label and calling it would use the label instead of actual address. linker looks at it
	
	mov $7, %rbx

loop:
	cmp $0, %rbx #cmp stores its resultin flag reg. this works as our test condiotn otherwise loop will run forever
	jle endofloop
	sub $1, %rbx
	jmp loop
endofloop:

	mov $60, %rax
	mov $1, %rdi
	syscall	



#3	mov $1, %rdi
#	jmp foo	#changes the instruction pointer to label foo so next instr of sub wont execute. this is like while(true) in HLL. its an uncond jump.	
#	sub $1, %rdi


#3foo: 
#	mov $60, %rax
#	syscall

	
#2	mov $60, %rax #exit
#	mov $1, %rdi #return code 0
#	add $1, %rdi
#	syscall
	
#1	mov $60, %rax #exit
#	mov $0, %rdi #return code 0
#	syscall
	
