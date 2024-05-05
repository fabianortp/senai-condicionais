Algoritmo "CalculaDesconto"

Função CalcularDesconto(quantidade: inteiro): real
Var
    desconto: real

Se quantidade <= 5 Então
    desconto <- 0.02
Senão
    Se quantidade <= 10 Então
        desconto <- 0.03
    Senão
        desconto <- 0.05
    FimSe
FimSe

Retorne desconto

FimFunção

Procedimento CalcularTotalAPagar(nome: caractere, quantidade: inteiro, preco_unitario: real)
Var
    total, desconto, total_a_pagar: real

total <- quantidade * preco_unitario
desconto <- total * CalcularDesconto(quantidade)
total_a_pagar <- total - desconto

Escreva("Produto: ", nome)
Escreva("Quantidade adquirida: ", quantidade)
Escreva("Preço unitário: R$", preco_unitario)
Escreva("Total: R$", total)
Escreva("Desconto: R$", desconto)
Escreva("Total a pagar: R$", total_a_pagar)

FimProcedimento

Inicio
    Var
        nome_produto: caractere
        quantidade: inteiro
        preco_unitario: real

    Escreva("Digite a descrição do produto: ")
    Leia(nome_produto)

    Escreva("Digite a quantidade adquirida: ")
    Leia(quantidade)

    Escreva("Digite o preço unitário: ")
    Leia(preco_unitario)

    CalcularTotalAPagar(nome_produto, quantidade, preco_unitario)
FimAlgoritmo