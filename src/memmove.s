	global memmove:function
	section .text

memmove:
	mov rax, rdi
	xor rcx, rcx
	cmp rdi, rsi
	jb loop1
	jmp loop2

loop1:
	cmp rcx, rdx
	je exit
	mov r8b,  BYTE [rsi]
	mov BYTE [rdi], r8b
	inc rdi
	inc rcx
	inc rsi
	jmp loop1

loop2:
	cmp rdx, 0
	je exit
	dec rdx
	mov r8b,  BYTE [rsi + rdx]
	mov BYTE [rdi + rdx], r8b
 	jmp loop2

exit:
        ret
