Algoritmo "PostoCombustivel"

// Procedimento para calcular o desconto baseado na quantidade de litros e no tipo de combustível
Procedimento CalcularDesconto(litros: real, tipo_combustivel: caractere, valor_litro: real)
    Var
        desconto_por_litro: real

    Se tipo_combustivel = "A" Então // Álcool
        Se litros <= 25 Então
            desconto_por_litro <- 0.02
        Senão
            desconto_por_litro <- 0.04
        FimSe
    Senão Se tipo_combustivel = "G" Então // Gasolina
        Se litros <= 25 Então
            desconto_por_litro <- 0.03
        Senão
            desconto_por_litro <- 0.05
        FimSe
    FimSe

    desconto_total <- litros * desconto_por_litro

FimProcedimento

// Procedimento para calcular o valor a ser pago pelo cliente
Procedimento CalcularValorAPagar(litros: real, tipo_combustivel: caractere)
    Var
        valor_litro: real
        valor_total: real

    Se tipo_combustivel = "A" Então // Álcool
        valor_litro <- 3.79
    Senão Se tipo_combustivel = "G" Então // Gasolina
        valor_litro <- 6.59
    FimSe

    CalcularDesconto(litros, tipo_combustivel, valor_litro)
    valor_total <- litros * valor_litro - desconto_total

    Escreva("O valor a ser pago pelo cliente é: R$", valor_total)

FimProcedimento

Inicio
    Defina desconto_total como real

    Escreva("Informe o tipo de combustível (A-álcool, G-gasolina): ")
    Leia(tipo_combustivel)
    Escreva("Informe a quantidade de litros vendidos: ")
    Leia(litros)

    CalcularValorAPagar(litros, tipo_combustivel)

FimAlgoritmo