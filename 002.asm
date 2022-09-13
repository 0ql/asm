format ELF64 executable 3

segment readable executable

entry main

; manipulating the stack pointer

main:
	push 10
	push 48 ; 0
	push 49 ; 1
	push 50 ; 2
	push 51 ; 3
	push 52 ; 4
	push 53 ; 5

	mov rbx, rsp ; rsp => stack pointer

	; write
	mov rdx, 56 ; len
	mov rsi, rbx
	mov rdi, 1 ; destination: stdout
	mov rax, 1 ; syscall number
	syscall

	; exit
	mov rdi, 69
	mov rax, 60 ; syscall number
	syscall
