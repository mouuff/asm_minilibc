	global strchr:function
	section .text

strchr:
	mov rax, rdi
	dec rax

loop:
	inc rax
	cmp byte [rax], sil
	je exit
	cmp byte [rax], 0
	je exitzero
	jmp loop

exitzero:
	xor rax, rax

exit:
	ret
