
        global rindex:function
        section .text

loop:
	mov r11b, [rdi]
        ;; loop {
	cmp r11b, sil
	cmove rax, rdi
	;; }
	inc rdi
        cmp r11b, 0
	jne loop
        ret

rindex:
        xor rax, rax
        jmp loop
