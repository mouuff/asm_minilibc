
        global rindex:function
        section .text

loop:
        mov r11b, [rdi+rax]
        inc rax
        cmp r11b, 0
        jne loop
	mov rax, rdi
        ret

rindex:
        xor rax, rax
        jmp loop
