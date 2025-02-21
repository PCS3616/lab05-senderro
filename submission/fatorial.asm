@ =0x400  ; Início da sub-rotina

LD N      ; Carrega o valor de N para AC
JZ FIM    ; Se AC == 0, pula para FIM (fatorial de 0 é 1)
ST RES    ; Inicializa RES com N (RES = N)

LOOP: 
    SB UM     ; AC = AC - 1 (decrementa N)
    ST N      ; Atualiza N
    JZ FIM    ; Se N == 0, termina
    LD RES    ; Carrega RES em AC
    ML N      ; Multiplica AC por N
    ST RES    ; Atualiza RES com o novo valor
    JP LOOP   ; Volta para LOOP

FIM:
    HM        ; Halta a execução

@ =0x100
N   K =5     ; Número a ser fatorializado (mude esse valor para testar)

@ =0x102
RES K =1     ; Inicializa o resultado

@ =0x200
UM  K =1     ; Constante 1 para decremento
