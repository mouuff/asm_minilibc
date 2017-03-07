	global memset:function
	section .text

memset:
	mov rax, rdi
	cmp rdx, 0
	jne .loop
	ret

.loop:
	dec rdx
	mov byte [rdi+rdx], sil
	cmp rdx, 0
	jne .loop
	ret

