	global memcpy:function
	section .text

memcpy:
	mov rax, rdi
	xor r11, r11

loop:
	cmp r11, rdx
	jae exit
	mov r10b, byte [rsi+r11]
	mov byte [rdi+r11], r10b
	inc r11
	jmp loop

exit:
	ret
