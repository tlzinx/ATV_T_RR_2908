.data
	a: .word 12
	b: .word 5
	t: .word 0
	newline: .asciiz "\n"
	fmt: .asciiz "t=%d"
.text
	main:
	lw $t0,a
	lw $t1,b
	add $t2,$t0,$t0
	sub $t2,$t2,$t1
	sw $t2,t
	move $a0,$t2
	la $a1,fmt
	li $v0,4
	syscall
	li $v0,4
	la $a0, newline $a0
	syscall
	li $v0,10
	syscall