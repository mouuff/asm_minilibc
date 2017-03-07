
        global strncmp:function
        section .text

strncmp:
	xor rax, rax
	xor r10, r10
	jmp loop

loop:
	cmp rdx, 0
	jbe exit
	
	mov al, byte [rdi]
	mov r10b, byte [rsi]
	sub eax, r10d
	cmp eax, 0
	jne exit

	cmp byte [rdi], 0
	je exit
	cmp byte [rsi], 0
	je exit

	inc rsi
	inc rdi
	dec rdx
	jmp loop

exit:
	ret
