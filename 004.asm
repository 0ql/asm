format ELF64 executable 1

segment readable executable

entry start

; change data in memory

start:
	mov rax, msg ; copy the pointer of msg into rax
	mov qword [rax], 12 ; overwrite the 10 with 12 in memory

	; exit
	mov rdi, qword [msg] ; load value of msg into rdi
	mov rax, 60 ; syscall number
	syscall

segment readable writable

msg db 10
