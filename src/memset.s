	global memset:function
	section .text

loop:
	mov byte [rdi+r11], sil
	inc r11
	cmp r11, rdx
	jb loop
	ret

memset:
	xor r11, r11
	mov rax, rdi
	jmp loop

