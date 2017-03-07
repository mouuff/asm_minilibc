	global strstr:function
	section .text

	
nexit:
	xor rax, rax
exit:	
	ret

cmploop:
        mov r8b, BYTE [rdi + rcx]
        mov r9b, BYTE [rsi + rcx]
	inc rcx
	cmp r9b, 0
	je exit
        cmp r8b, r9b
        jne mainloop
	cmp r8b, 0
	je exit
	jmp cmploop

mainloop:
        inc rdi
frist:
        xor rcx, rcx
        mov r8b, BYTE [rdi]
        cmp r8b, 0
        je nexit
        xor r8, r8
        xor r9, r9
        mov rax, rdi
	jmp cmploop
	
strstr:
	xor rax, rax
        xor r8, r8
        xor r9, r9
	jmp frist
