@ picoPascal compiler output
	.global pmain

@ proc one(var x: integer);
	.text
_one:
	mov ip, sp
	stmfd sp!, {r0-r1}
	stmfd sp!, {r4-r10, fp, ip, lr}
	mov fp, sp
@ two()
	mov r10, fp
	bl _one.two
	ldmfd fp, {r4-r10, fp, sp, pc}
	.pool

@   proc two(); begin x := x+1 end;
_one.two:
	mov ip, sp
	stmfd sp!, {r4-r10, fp, ip, lr}
	mov fp, sp
@ proc two(); begin x := x+1 end;
	ldr r0, [fp, #24]
	ldr r4, [r0, #40]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	ldmfd fp, {r4-r10, fp, sp, pc}
	.pool

@ proc three();
_three:
	mov ip, sp
	stmfd sp!, {r4-r10, fp, ip, lr}
	mov fp, sp
	sub sp, sp, #8
@ y := 36;
	mov r0, #36
	str r0, [fp, #-4]
@ one(y);
	add r0, fp, #-4
	bl _one
@ print_num(y);
	ldr r0, [fp, #-4]
	bl print_num
@ newline()
	bl newline
	ldmfd fp, {r4-r10, fp, sp, pc}
	.pool

pmain:
	mov ip, sp
	stmfd sp!, {r4-r10, fp, ip, lr}
	mov fp, sp
@ three()
	bl _three
	ldmfd fp, {r4-r10, fp, sp, pc}
	.pool

	.section .note.GNU-stack
@ End
