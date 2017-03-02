
        global strcmp:function
        section .text

loop:
	;; strcmp below
	mov al, [rsi+r11]
	sub al, [rdi+r11]
	cmp al, 0
	jne exit
	;; loop conditions below
	cmp byte [rdi+r11], 0
	je exit
	cmp byte [rsi+r11], 0
	je exit
	inc r11
	jmp loop

strcmp:
	xor rax, rax
	xor r11, r11
	jmp loop

exit:
	ret
