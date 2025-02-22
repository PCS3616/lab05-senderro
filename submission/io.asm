@ /000
    JP START  ; Pula para o início do código

@ /100
START   GD 0000      ; Lê x
SB HEX_3030
MM X_NUM

GD 0000      ; Lê espaço (ignorar)
GD 0000      ; Lê espaço (ignorar)

GD 0000      ; Lê y
SB HEX_3030
MM Y_NUM


LD X_NUM
AD Y_NUM
MM RESULT

LD RESULT
ML HEX_1000
MM RESULT_TEMP

LD HEX_A_1000
SB RESULT_TEMP

JN CARRY
JP FINAL

CARRY LD RESULT
SB HEX_A;
AD HEX_100;
MM RESULT;

; Imprimir resultado
FINAL LD RESULT
AD HEX_3030
PD 0001

HM /0000     ; Fim do programa

@ /400
X_NUM      K /0000  ; Primeiro dígito de X
Y_NUM      K /0000  ; Primeiro dígito de Y
RESULT     K /0000  ; Resultado da soma
RESULT_TEMP K /0000 ; Valor temporario
CONST_30   K /0030  ; Constante para conversão ASCII
CONST_10   K /0010  ; Constante 10 (multiplicação)
HEX_A      K /000A  ; Constante A para checar carry
HEX_A_1000 K /A000
HEX_100    K /0100  ; Constante para ajuste de carry
HEX_1000    K /1000

HEX_3030 K /3030
