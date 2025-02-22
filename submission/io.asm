@ /000
GD /000
SB HEX_3030
MM X_NUM

GD /000

GD /000
SB HEX_3030
MM Y_NUM


LD X_NUM
AD Y_NUM
MM RESULT

LD RESULT
SB HEX_A;
AD HEX_100;
MM RESULT;

LD RESULT
AD HEX_3030
PD /100
HM /0000

@ /400
X_NUM      K /0000  ; Primeiro dígito de X
Y_NUM      K /0000  ; Primeiro dígito de Y
RESULT     K /0000  ; Resultado da soma
HEX_A      K /000A  ; Constante A para checar carry
HEX_100    K /0100  ; Constante para ajuste de carry
HEX_3030 K /3030
