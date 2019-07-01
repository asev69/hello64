	section .data
message	db      27,"[1;34m"
	db	"Hello, 世界"
	db	27,"[0m"
	db	10
msglen	equ     $-message

	section .text
	global  _start
_start:
        mov     rax,1           ; sys_write
        mov     rdi,rax         ; unsigned int	fd
        mov     rsi,message     ; char	       *buf
        mov     rdx,msglen      ; size_t	count
        syscall

        mov     rax,60          ; sys_exit
        xor     rdi,rdi         ; int		error_code
        syscall
