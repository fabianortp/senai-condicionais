Algoritmo "CalculoMedia"

Função LerNota(): real
    Var
        nota: real

    Escreva("Digite a nota: ")
    Leia(nota)

    Enquanto nota < 0 ou nota > 10 Faça
        Escreva("Nota inválida. Digite novamente: ")
        Leia(nota)
    FimEnquanto

    Retorne nota

FimFunção

Procedimento CalcularMedia()
    Var
        nota1, nota2, media: real

    nota1 <- LerNota()
    nota2 <- LerNota()

    media <- (nota1 + nota2) / 2

    Escreva("A média do aluno é: ", media)

    Se media >= 6,0 Então
        Escreva("Parabéns! O aluno está aprovado.")
    Senão Se media >= 4,0 Então
        Escreva("O aluno está em recuperação.")
    Senão
        Escreva("O aluno está reprovado.")
    FimSe

FimProcedimento

Inicio
    CalcularMedia()
FimAlgoritmo