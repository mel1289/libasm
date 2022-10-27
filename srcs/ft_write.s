section .text

extern __errno_location

global ft_write

ft_write:
	mov	rax, 1
	syscall
	cmp rax, 0
	jl ft_write_err
	ret

ft_write_err:
	neg rax
	mov rdx, rax
	call __errno_location
	mov [rax], rdx
	mov rax, -1
	ret