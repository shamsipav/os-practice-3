org 7C00h
start:

MOV AH, 13h
MOV CX, 32
MOV BL, 00001011b
MOV DL, 45
MOV DH, 11
MOV BP, string
INT 10h

MOV CX, 7
MOV DL, 0

MOV DH, 11
MOV BP, a
INT 10h

MOV DH, 12
MOV BP, b
INT 10h

MOV DH, 13
MOV BP, c
INT 10h

MOV DH, 14
MOV BP, d
INT 10h

string DB 'Shamsimukhametov Pavel Raifovich'
a DB '  ###  '
b DB ' #   # '
c DB ' #   # '
d DB '  ###  '

exit:


db 510-($-$$) dup 0
dw 0AA55h