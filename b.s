@ picoPascal compiler output
	.global pmain

	.text
pmain:
	mov ip, sp
	stmfd sp!, {r4-r10, fp, ip, lr}
	mov fp, sp
@ a[3..4)[5] := 20;
	mov r0, #20
	ldr r1, =_a
	mov r2, #3
	mov r3, #4
	mul r2, r2, r3
	add r1, r1, r2
	mov r2, #5
	mov r3, #4
	mul r2, r2, r3
	add r1, r1, r2
	str r0, [r1]
@ print_num(a[8]);
	ldr r0, =_a
	mov r1, #8
	mov r2, #4
	mul r1, r1, r2
	add r0, r0, r1
	ldr r0, [r0]
	bl print_num
@ newline()
	bl newline
.L1:
	ldmfd fp, {r4-r10, fp, sp, pc}
	.pool

	.comm _a, 40, 4
	.section .note.GNU-stack
@ End
