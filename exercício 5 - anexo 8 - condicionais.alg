Algoritmo "Calculadora"

Função Soma(a, b: inteiro): inteiro
    Retorne a + b

Função Subtracao(a, b: inteiro): inteiro
    Retorne a - b

Função Multiplicacao(a, b: inteiro): inteiro
    Retorne a * b

Função Divisao(a, b: inteiro): real
    Se b <> 0 Então
        Retorne a / b
    Senão
        Retorne -1 // Retorna -1 se houver uma tentativa de divisão por zero
    FimSe

Inicio
    // Solicitação da operação
    Escreva("Digite a operação desejada (+, -, * ou /): ")
    Leia(operacao)

    // Solicitação dos números
    Escreva("Digite o primeiro número (A): ")
    Leia(A)
    Escreva("Digite o segundo número (B): ")
    Leia(B)

    // Verifica a operação escolhida e realiza o cálculo correspondente
    Se operacao = "+" Então
        resultado <- Soma(A, B)
    Senao Se operacao = "-" Então
        resultado <- Subtracao(A, B)
    Senao Se operacao = "*" Então
        resultado <- Multiplicacao(A, B)
    Senao Se operacao = "/" Então
        resultado <- Divisao(A, B)
    FimSe

    // Exibe o resultado
    Se resultado <> -1 Então
        Escreva("Resultado: ", resultado)
    Senao
        Escreva("Erro: divisão por zero.")
    FimSe

FimAlgoritmo