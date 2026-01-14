mov ah, 0x0e

mov bp, 0x9000
mov sp, bp

push 'A'
push 'B'
push 'C'

mov al,[0x8ffa]
int 0x10

pop bx
mov al,bl
int 0x10

mov al,[0x8ffc]
int 0x10

pop bx
mov al,bl
int 0x10

mov al,[0x8ffe]
int 0x10

pop bx
mov al,bl
int 0x10

mov al,[0x9000]
int 0x10

jmp $

times 510-($-$$) db 0
dw 0xaa55