	global memmove
	section .text

cpy:
        cmp r11, rdx
        jae exit
        mov r10b, byte [rsi+r11]
        mov byte [rdi+r11], r10b
        inc r11
        jmp cpy

revcpy:
	cmp rdx, 0
	jbe exit
	mov r10b, byte [rsi+rdx-1]
	mov byte [rdi+rdx-1], r10b
	dec rdx
	jmp revcpy

memmove:
	mov rax, rdi
	xor r10, r10
	xor r11, r11
	cmp rdi, rsi
	ja revcpy
	jmp cpy

exit:
	ret
