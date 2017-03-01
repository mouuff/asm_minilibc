	global memset:function
	section .text

loop:
	mov byte [rdi], sil
	inc r11
	inc rdi
	cmp r11, rdx
	jl loop

memset:
	xor r11, r11
	mov rax, rdi
