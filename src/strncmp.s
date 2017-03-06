
        global strncmp:function
        section .text

strncmp:
	xor rax, rax
	xor r10, r10
	xor r11, r11
	jmp loop

loop:
	mov al, byte [rdi]
	mov r10b, byte [rsi]
	sub eax, r10d

	cmp eax, 0
	jne exit
	
	cmp r11, rdx
	jae exit
	
	cmp byte [rdi], 0
	je exit
	cmp byte [rsi], 0
	je exit

	inc rsi
	inc rdi
	inc r11
	jmp loop

exit:
	ret
