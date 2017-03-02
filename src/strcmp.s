
        global strcmp:function
        section .text

strcmp:
	xor rax, rax
	xor r10, r10
	jmp loop

loop:
	mov al, byte [rdi]
	mov r10b, byte [rsi]
	sub eax, r10d
	cmp byte eax, 0
	jne exit
	
	cmp byte [rdi], 0
	je exit
	cmp byte [rsi], 0
	je exit

	inc rsi
	inc rdi
	jmp loop

exit:
	ret
