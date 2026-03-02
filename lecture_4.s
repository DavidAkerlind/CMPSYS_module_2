# Assembly programing




	.data
welcome0: .asciiz "Hello"
welcome2: .asciiz "´\nHello again"
welcome3: .asciiz "Hello once more"

# how to declare and initialize a array: 

vec: .word 0, 2, 3, 4, 5 12, 342, 11


	.text
	.global main
main: 
li $v0, 4 
la $a0, welcome0
syscall

la $a0, welcome2
syscall

la $a0, welcome3
syscall

move $t0,$zero #i=0
move $t1,$zero #sum=0
la $t2,vec #base address
L1:
	bge $t0,7,L2 # if greater or equal to 7(the size of the array) end loop
	sll $t3,$t0,2 #t3=4*i
	add $t3,$t2,$t3 #t3=vec+4*i
	lw $t3,0($t3) #t3=vec[i]
	add $t1,$t1,$t3 #sum=sum+vec[i]
	addi $t0,$t0,1 #i=i+1
	j L1
L2:

li $v0, 10 
syscall
