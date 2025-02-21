
@ /0100
N   K =5 
RES K = 1


@ /0200
UM K = 1

@ /0400  ; Início da sub-rotina
LD N      ; Carrega o valor de N para AC
JZ FIM    ; Se AC == 0, pula para FIM (fatorial de 0 é 1)

LOOP: 
    LD N      ; Carrega o valor de N para AC
    SB UM     ; AC = AC - 1 (decrementa N)
    ST N      ; Atualiza N
    JZ FIM    ; Se N == 0, termina
    LD RES    ; Carrega RES em AC
    ML N      ; Multiplica AC por N
    ST RES    ; Atualiza RES com o novo valor
    JP LOOP   ; Volta para LOOP

FIM:
    HM        ; Halta a execução