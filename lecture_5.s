	.data
var: .word 5
silly_p: .asciiz "Silly"
sillier_p: .asciiz "Sillier"

# how to declare and initialize a array: 

	.text
	.include "sqr.s"
	.include "print.s"
	.globl main
main: 
	
	subu $sp, $sp, 16 #remove 4 words
	la $a0, sillier_p
	
	jal print
	addu $sp, $sp, 16
	
	j exit
	
exit:
# exit program
	addi $v0, $zero, 10
	syscall 
	
silly: 
	subu $sp, $sp, 16 #remove 4 words
	la $a0, silly_p
	lw $a1, var
	
	jal print
	addu $sp, $sp, 16
	
	


