# ==== 1 ==== "#
#perform the subtraction 12 ? 45 using MARS and by using addi and sub instructions (only). What is the result? Why?
#.data
#result: .word 0
#.text
#addi $t0, $zero 12
#addi $t1, $zero 45


#sub $t2, $t0, $t1

#sw $t2, result


# ==== 2 ==== #
# Perform the multiplication 35·8 using MARS and by using addi and sll instructions (only). 


#.data
#result: .word 0
#.text
#addi $t0, $zero 35


#sll $t2, $t0,  

#sw $t2, result

# ==== 3 ==== #
#Perform the integer division 35/4 by using addi and srl instructions (only).
#.data
#result: .word 0
#.text

#addi $t0, $zero 35


#srl $t2, $t0, 2

# ==== 4 ==== #
# Multiply the two 8-bit numbers 0x33 and 0x55 using only addition, suubtraction and shift instructions.
# 0x55 = 0101 0101 =  1 4 16 64 = 85

.data
result: .word 0
.text

addi $t0, $zero 0x33 # multipicand  51

#bit 1 just add 33 times 1
add $t2, $zero, $t0 #  start value 0x33 / zero at t2


# bit 2 33 times 4 stored in t1
sll $t1, $t0, 2

add $t2, $t2, $t1


# bit 3 33 times 16
sll $t1, $t0, 4

add $t2, $t2, $t1 # answer in t2

# bit 4 33 times 64

sll $t1, $t0, 6

add $t2, $t2, $t1

sw $t2, result







