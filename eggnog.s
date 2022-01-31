    .global	main
main:
    // pre-increment the stack point to create space for two 8-byte registers
    // link register (x30), and frame pointer (x29), and store them.
	stp	x29, x30, [sp, -16]!

    // Load the argument and perform the call. Like 'printf("...")' in C.
	ldr	x0, =L1
	bl	printf


        ldr 	x0, =L2
	bl	printf

	ldr	x0, =L3
	bl	printf

    // initialize the return value in the return register
	mov	x0, 0

    // restore the registers and post-decrement 
    // the stack pointer for consistency
	ldp	x29, x30, [sp], 16

    // return from the call
	ret

L1:
	.asciz "Rich, creamy, eggnog\n"
L2:
	.asciz "My favorite winter drink\n"
L3:
	.asciz "So tasty and sweet\n"
