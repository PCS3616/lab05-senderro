@ /0000
JP /0400


@ /0102
RES K = 1
UM K = 1

@ /0400  ; Início da sub-rotina
LD N      ; Carrega o valor de N para AC
JZ FIM    ; Se AC == 0, pula para FIM (fatorial de 0 é 1)

LOOP: 
    LD N      ; Carrega o valor de N para AC
    JZ FIM    ; Se N == 0, termina
    ML RES     ; Multiplica AC por RES
    ST RES    ; Atualiza RES com o novo valor
    LD N      ; Carrega o valor de N para AC
    SB UM     ; AC = AC - 1 (decrementa N)
    ST N      ; Atualiza N
    JP LOOP   ; Volta para LOOP

FIM:
    HM /0000      ; 