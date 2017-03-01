;; nasm -felf64 test.s && cc test.o test.c && ./a.out

	global strlen:function
	section .text

loop:
	mov r11b, [rdi+rax]
	inc rax
	cmp r11, 0
	jne loop
	dec rax
	ret

strlen:
	xor rax, rax
	jmp loop
