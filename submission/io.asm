@ /000
    JP START  ; Pula para o início do código

@ /100
START   GD 0000      ; Lê primeiro dígito de x
MM X_D1
GD 0000      ; Lê segundo dígito de x
MM X_D2

GD 0000      ; Lê espaço (ignorar)
GD 0000      ; Lê espaço (ignorar)

GD 0000      ; Lê primeiro dígito de y
MM Y_D1
GD 0000      ; Lê segundo dígito de y
MM Y_D2

LD X_D1      
SB CONST_30  
MM X_D1
LD X_D2
SB CONST_30  
MM X_D2
LD Y_D1
SB CONST_30  
MM Y_D1
LD Y_D2
SB CONST_30  
MM Y_D2

LD X_D1
ML CONST_10
AD X_D2
MM X_VAL

LD Y_D1
ML CONST_10
AD Y_D2
MM Y_VAL

LD X_VAL
AD Y_VAL
MM RESULT

LD RESULT
ML VALOR_100
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

@ /200
X_D1       K /0000  ; Primeiro dígito de X
X_D2       K /0000  ; Segundo dígito de X
Y_D1       K /0000  ; Primeiro dígito de Y
Y_D2       K /0000  ; Segundo dígito de Y
X_VAL      K /0000  ; Valor numérico de X
Y_VAL      K /0000  ; Valor numérico de Y
RESULT     K /0000  ; Resultado da soma
RESULT_TEMP K /0000 ; Valor temporario
CONST_30   K /0030  ; Constante para conversão ASCII
CONST_10   K /000A  ; Constante 10 (multiplicação)
HEX_A      K /000A  ; Constante A para checar carry
HEX_A_1000 K /A000
HEX_100    K /0100  ; Constante para ajuste de carry
VALOR_100 K =100;
HEX_3030 K /3030
