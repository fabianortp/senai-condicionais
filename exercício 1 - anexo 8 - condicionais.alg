Algoritmo "SomaComparacao"

Procedimento VerificarSoma(A, B, C: inteiro)
Var
    soma: inteiro

Função CalcularSoma(A, B: inteiro): inteiro
Var
    resultado: inteiro
Inicio
    resultado <- A + B
    Retorne resultado
FimFunção

Inicio
    Escreva("Digite o valor de A: ")
    Leia(A)
    Escreva("Digite o valor de B: ")
    Leia(B)
    Escreva("Digite o valor de C: ")
    Leia(C)

    soma <- CalcularSoma(A, B)

    Se soma < C Então
        Escreva("A soma de A + B é menor que C.")
    Senao
        Escreva("A soma de A + B é maior que C.")
    FimSe
FimAlgoritmo