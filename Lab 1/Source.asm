.686
.model flat, stdcall

.stack 100h

.data
x dw 100
y dw 21
z dw 4
nx dw ?
ny dw ?
nz dw ?
m dw ?

.code
ExitProcess PROTO STDCALL :DWORD
Start:
mov ax, x
shr ax, 3
mov nx, ax
mov ax, y
shr ax, 3
mov ny, ax
mov ax, z
shr ax, 3
mov nz, ax
mov ax, nx
mov bx, 3
mul bx
mov bx, ny
add ax, bx
mov bx, nz
or ax, bx
mov m, ax

exit:
Invoke ExitProcess, m
End Start