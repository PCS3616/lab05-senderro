@ /0000
JP /0500

@ /0500
COUNT      K =0      ; Contador principal
TWO        K =2      ; Constante 2
ONE        K =1      ; Constante 1
ZERO_VAL   K =0      ; Constante 0
SUM_SQR    K =0      ; Acumulador dos quadrados
MEM_ADDR   K /0102   ; Endereço base para armazenar os quadrados
LIMIT      K =64     ; Limite (64 números, de 0 a 63)
TMP_VAL    K /0000   ; Valor temporário para armazenar quadrados
STORE_OP   MM /0000  ; Operação de armazenamento
SAVE_ADDR  K /0102   ; Endereço inicial para armazenar os quadrados

LD ZERO_VAL
MM /0100

LOOP_CALC   LD COUNT
            SB LIMIT
            JZ END_LOOP  ; Se COUNT == 64, termina

            LD COUNT
            ML TWO       ; Multiplica COUNT por 2
            AD ONE
            AD SUM_SQR   ; Soma ao acumulador
            MM SUM_SQR   ; Atualiza SUM_SQR

            LD SUM_SQR
            MM TMP_VAL   ; Armazena temporariamente o valor calculado

            LD SAVE_ADDR
            AD STORE_OP
            MM WRITE_LOC  ; Define o endereço correto para armazenar

            LD TMP_VAL
WRITE_LOC   MM /0000      ; Armazena o valor no endereço calculado

            LD SAVE_ADDR
            AD TWO
            MM SAVE_ADDR  ; Incrementa o endereço de armazenamento

            LD COUNT
            AD ONE        ; Incrementa COUNT (próximo número)
            MM COUNT
            JP LOOP_CALC  ; Repete para o próximo número

END_LOOP    HM /0000      ; Halt (fim da execução)
