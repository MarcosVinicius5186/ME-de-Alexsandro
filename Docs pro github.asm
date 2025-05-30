;---------------------------------------------------
; Programa: Verifica se a soma é maior que 10
; Autor:Marcos Vinicius,curso de ADS,Universidade Tiradentes
; Data: 30-05-2025
;---------------------------------------------------

INICIO:     LDA NUM1           ; Carrega NUM1
            ADD NUM2           ; Soma com NUM2
            STA SOMA           ; Guarda a soma
            SUB DEZ            ; Subtrai 10 da soma

            JN MENOR_OU_IGUAL  ; Se resultado for negativo, soma <= 10
            LDI 1              ; Caso a soma seja > 10, carrega 1
            STA RESULTADO      ; Armazena 1 como verdadeiro
            JMP FIM            ; Pula para o fim

MENOR_OU_IGUAL:
            LDI 0              ; Caso a soma seja <= 10, carrega 0
            STA RESULTADO      ; Armazena 0 como falso

FIM:        HLT                ; Fim do programa

; ---- DADOS ----
NUM1:       DB 6               ; Primeiro número
NUM2:       DB 5               ; Segundo número
DEZ:        DB 10              ; Constante 10
SOMA:       DB 0               ; Armazena NUM1 + NUM2
RESULTADO:  DB 0               ; 1 se soma > 10, senão 0



