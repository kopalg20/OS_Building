[org 0]

mov ax, 0x07C0
mov ds, ax

mov ah, 0x0e

mov al, '4'
int 0x10

mov al, [the_secret]
int 0x10

jmp $

the_secret:
    db 'X'

times 510-($-$$) db 0
dw 0xaa55
