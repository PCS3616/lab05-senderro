@ /000
JP BEGIN

@ /0500
BEGIN LD ZERO  ; inicializando o codigo
MM SOMADOR ; to zerando tudo
MM ITERADOR
MM PROIMPAR

MAIN_LOOP	LD SOMADOR  ;Carrega o valor atual do SOMADOR
AD PROIMPAR ;Soma o prox num
MM SOMADOR 
LD ITERADOR 
ML DOIS 
AD UM   
MM PROIMPAR 
LD ITERADOR  
AD UM 
MM ITERADOR  
LD SOMADOR
MM VARTEMPORARIA
LD MEM_ADDR
AD STORE_OP
MM WRITE_LOC
LD VARTEMPORARIA

WRITE_LOC	MM /0000
LD MEM_ADDR
AD DOIS
MM MEM_ADDR
SB LIMIT_VAL ; Verifica se ITERADOR eh 64
JZ END_PROC
JP MAIN_LOOP

END_PROC	HM =0

@ /0600
LIMIT_VAL	K /0180
STORE_OP	MM /000
MEM_ADDR	K /100
SOMADOR	K /0000
ITERADOR	K /0000 
PROIMPAR	K /0001
ZERO K =0
UM	K /0001
DOIS	K /0002
VARTEMPORARIA	K /0000
