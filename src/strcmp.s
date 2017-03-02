
        global strcmp:function
        section .text

strcmp:
	xor rax, rax
	jmp loop

loop:
	mov al, [rdi]
	mov r10b, [rsi]
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
