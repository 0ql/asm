format ELF64 executable 3

segment readable executable

entry start

; writing from memory

start:
	; write
	mov rdx, 1 ; len
	lea rsi, [msg_1]
	mov rdi, 1 ; destination: stdout
	mov rax, 1 ; syscall number
	syscall

	; exit
	mov rdi, 69
	mov rax, 60 ; syscall number
	syscall

segment readable writable

msg_1 db 'Input first Number: ', 10, 0
