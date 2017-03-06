	global strcspn:function
	section .text

rsiloop:
	cmp byte [r11+rsi], 0
	je cont
	mov r10b, byte [rax+rdi]
	cmp byte [r11+rsi], r10b
	je exit
	inc r11
	jmp rsiloop

strcspn:
	xor rax, rax

rdiloop:
	cmp byte [rax+rdi], 0
	je exit
	xor r11, r11
	jmp rsiloop
cont:	
	inc rax
	jmp rdiloop

exit:
	ret
