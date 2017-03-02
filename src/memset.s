	global memset:function
	section .text

loop:
	dec rdx
	mov byte [rdi+rdx], sil
	cmp rdx, 0
	jne loop
	ret

memset:
	mov rax, rdi
	jmp loop

