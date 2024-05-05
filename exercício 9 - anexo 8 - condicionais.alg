Algoritmo "ConcessaoEmprestimo"

// Procedimento para calcular o valor máximo do empréstimo
Procedimento CalcularValorMaximoEmprestimo(rendaMensal: real)
    valorMaximoEmprestimo <- 10 * rendaMensal
    Escreva("O valor máximo do empréstimo é R$", valorMaximoEmprestimo)
FimProcedimento

// Procedimento para calcular o valor máximo da prestação
Procedimento CalcularValorMaximoPrestacao(rendaMensal: real)
    valorMaximoPrestacao <- 0.3 * rendaMensal
    Escreva("O valor máximo da prestação é R$", valorMaximoPrestacao)
FimProcedimento

// Função para verificar se o empréstimo pode ser concedido
Funcao VerificarConcessaoEmprestimo(rendaMensal, valorEmprestimo, numPrestacoes: real): logico
    Se valorEmprestimo <= 10 * rendaMensal e valorEmprestimo / numPrestacoes <= 0.3 * rendaMensal Entao
        Retorne verdadeiro
    Senao
        Retorne falso
    FimSe
FimFuncao

Inicio
    // Leitura dos dados do solicitante
    Escreva("Digite a renda mensal do solicitante: ")
    Leia(rendaMensal)
    Escreva("Digite o valor total do empréstimo solicitado: ")
    Leia(valorEmprestimo)
    Escreva("Digite o número de prestações desejadas pelo solicitante: ")
    Leia(numPrestacoes)

    // Chamada dos procedimentos para calcular os valores máximos
    CalcularValorMaximoEmprestimo(rendaMensal)
    CalcularValorMaximoPrestacao(rendaMensal)

    // Verificação da concessão do empréstimo
    Se VerificarConcessaoEmprestimo(rendaMensal, valorEmprestimo, numPrestacoes) Entao
        Escreva("Empréstimo concedido!")
    Senao
        Escreva("Empréstimo não concedido.")
    FimSe
FimAlgoritmo