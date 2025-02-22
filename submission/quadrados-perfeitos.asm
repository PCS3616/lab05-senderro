@ /0500
ITER1 K =0      ; Contador 
DOIS   K =2     ; Constante 2
UM     K =1     ; Constante 1
ZERO   K =0     ; Constante 0
SOMA   K =0     ; Acumulador dos quadrados
ENDER  K /0100  ; Endereço base para armazenar os quadrados
SESQUATRO K =64  ; Limite (64 números, de 0 a 63)

LOOP1 LD ITER1
SB SESQUATRO
JZ FIM       ; Se ITER1 == 64, termina
LD ITER1
ML DOIS     ; Multiplica ITER1 por 2
AD UM        ;
AD SOMA      ; Soma ao acumulador
MM SOMA      ; Atualiza SOMA

LD SOMA
MM &ENDER     ; Armazena o quadrado na memória
LD ENDER
AD DOIS      ; Próxima posição de memória
MM ENDER
LD ITER1
AD UM        ; Incrementa ITER1 (próximo número)
MM ITER1
JP LOOP1     ; Repete para o próximo número

FIM HM /0000     ; Halt (fim da execução)
