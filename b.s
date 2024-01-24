@ picoPascal compiler output
	.global pmain

@ proc test1(a : array of integer);
	.text
_test1:
	mov ip, sp
	stmfd sp!, {r0-r1}
	stmfd sp!, {r4-r10, fp, ip, lr}
	mov fp, sp
@ begin;
@ newrow(c,9);
	mov r1, #4
	mov r0, #9
	bl palloc2
	mov r4, r0
@ test2(c^);
	ldr r1, [r4, #-4]
	mov r0, r4
	mov r10, fp
	bl _test1.test2
@ print_num(c^[0]);
	mov r0, #0
	mov r1, #4
	mul r0, r0, r1
	add r0, r4, r0
	ldr r0, [r0]
	bl print_num
@ newline();
	bl newline
@ end;
.L1:
	ldmfd fp, {r4-r10, fp, sp, pc}
	.pool

@     proc test2(b: array of integer);
_test1.test2:
	mov ip, sp
	stmfd sp!, {r0-r1}
	stmfd sp!, {r4-r10, fp, ip, lr}
	mov fp, sp
@ begin;
@ b[0] := a[0];
	ldr r0, [fp, #24]
	ldr r0, [r0, #40]
	mov r1, #0
	mov r2, #4
	mul r1, r1, r2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r1, [fp, #40]
	mov r2, #0
	mov r3, #4
	mul r2, r2, r3
	add r1, r1, r2
	str r0, [r1]
@ print_num(len(a));
	ldr r0, [fp, #24]
	add r0, r0, #40
	ldr r0, [r0, #4]
	bl print_num
@ newline();
	bl newline
@ end;
.L2:
	ldmfd fp, {r4-r10, fp, sp, pc}
	.pool

pmain:
	mov ip, sp
	stmfd sp!, {r4-r10, fp, ip, lr}
	mov fp, sp
@ x[3] := 4;
	mov r0, #4
	ldr r1, =_x
	mov r2, #3
	mov r3, #4
	mul r2, r2, r3
	add r1, r1, r2
	str r0, [r1]
@ test1(x[3..8));
	mov r4, #8
	mov r5, #3
	sub r1, r4, r5
	ldr r0, =_x
	mov r2, #4
	mul r2, r5, r2
	add r0, r0, r2
	mov r10, #0
	bl _test1
@ print_num(x[3]);
	ldr r0, =_x
	mov r1, #3
	mov r2, #4
	mul r1, r1, r2
	add r0, r0, r1
	ldr r0, [r0]
	bl print_num
@ newline()
	bl newline
.L3:
	ldmfd fp, {r4-r10, fp, sp, pc}
	.pool

	.comm _x, 40, 4
	.section .note.GNU-stack
@ End
