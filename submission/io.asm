;salva o numero
GD /0000
MM /FF0
GD /0000
MM /FF2
SC /F00
HM /0000

; operacoes
@ /F00
@ /F02

;1 - subtracao
LD /FF0
SB base
MM /F32
LD /FF2
SB base
MM /F34

;2 - Soma
LD /F32
AD /F34
MM /F36

;3 - Verificacao
DV /F3A
ML /F3A
MM /F38
LD /F36
SB /F38
MM /F3C
LV /000A
SB /F3C
JN /FA0 
JZ /FA0

@ /F2A
AD base
PD /100
RS /F00 

@ /FA0
LV /000A
MM /FCC
LV /0100
MM /FCE
LD /F36
SB /FCC
AD /FCE
JP /F2A


; variaveis
@ /F30
base K /3033

@ /F3A
k /0010
