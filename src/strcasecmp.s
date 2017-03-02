        global strcasecmp:function
        section .text

loweral:
	cmp al, 64		;cmp A
	jb pass			;if r9b < A pass
	cmp al, 90		;cmp Z
	jg pass			;if r9b > Z pass
	add al, 32		;lower
	jmp pass

lowerr10:
	cmp r10b, 64		;cmp A
	jb cont			;if r9b < A pass
	cmp r10b, 90		;cmp Z
	jg cont			;if r9b > Z pass
	add r10b, 32		;lower
	jmp cont

lowerall:
	;; lower al, r10b
	jmp loweral
pass:
	jmp lowerr10
	
strcasecmp:
        xor rax, rax
        xor r10, r10
        jmp loop

loop:
        mov al, byte [rdi]
        mov r10b, byte [rsi]
	jmp lowerall
cont:
	sub eax, r10d
        cmp eax, 0
        jne exit

        cmp byte [rdi], 0
        je exit
        cmp byte [rsi], 0
        je exit

        inc rsi
        inc rdi
        jmp loop

exit:
        ret
