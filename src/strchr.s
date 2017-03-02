	global strchr:function
	section .text

loop:
	inc rdi
	cmp byte [rdi], 0
	je exit
	cmp sil, byte [rdi]
	jne loop
	;; ret
	mov rax, rdi
	jmp exit

strchr:
	dec rdi
	xor rax, rax
	jmp loop

exit:
	ret
