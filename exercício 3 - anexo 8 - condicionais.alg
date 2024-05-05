Algoritmo "SomaOuMultiplica"
Var
    A, B, C: inteiro

Procedimento Calcular(A, B: inteiro)
    Se A = B Então
        C <- A + B
    Senão
        C <- A * B
    FimSe
FimProcedimento

Inicio
    Escreva("Digite o valor de A: ")
    Leia(A)
    Escreva("Digite o valor de B: ")
    Leia(B)

    Calcular(A, B)

    Escreva("O resultado é: ", C)
FimAlgoritmo