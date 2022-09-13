format ELF64 executable 3

segment readable executable

entry start

; write and exit syscalls

start:
	; write
	mov rdx, 6 ; len
	lea rsi, [msg] ; memory address
	add rsi, 1
	mov rdi, 1 ; destination: stdout
	mov rax, 1 ; syscall number
	syscall

	; exit
	mov rax, 60 ; syscall number
	mov rdi, 69
	syscall

segment readable writable

msg		db 'Hello', 10, 0
