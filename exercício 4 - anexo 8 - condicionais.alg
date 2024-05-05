Função CalcularPrecoFruta(qtd_kg: real, preco_ate_5: real, preco_acima_5: real): real
Var
    preco_total: real

Se qtd_kg <= 5 Então
    preco_total <- qtd_kg * preco_ate_5
Senão
    preco_total <- qtd_kg * preco_acima_5
FimSe

Retorne preco_total
FimFunção

Função CalcularTotalCompra(qtd_morangos: real, qtd_macas: real): real
Var
    preco_morangos, preco_macas, preco_total_sem_desconto, preco_total_com_desconto: real
    peso_total: real

// Calculando o preço de morangos e maçãs
preco_morangos <- CalcularPrecoFruta(qtd_morangos, 2.50, 2.20)
preco_macas <- CalcularPrecoFruta(qtd_macas, 1.80, 1.50)

// Calculando o peso total
peso_total <- qtd_morangos + qtd_macas

// Calculando o preço total sem desconto
preco_total_sem_desconto <- preco_morangos + preco_macas

// Aplicando o desconto, se necessário
Se peso_total > 8 ou preco_total_sem_desconto > 25.00 Então
    preco_total_com_desconto <- preco_total_sem_desconto * 0.9
Senão
    preco_total_com_desconto <- preco_total_sem_desconto
FimSe

Retorne preco_total_com_desconto
FimFunção

Algoritmo "Fruteira"
Var
    qtd_morangos, qtd_macas: real
    preco_final: real

Escreva("Digite a quantidade de morangos (em Kg): ")
Leia(qtd_morangos)
Escreva("Digite a quantidade de maçãs (em Kg): ")
Leia(qtd_macas)

preco_final <- CalcularTotalCompra(qtd_morangos, qtd_macas)

Escreva("O valor a ser pago pelo cliente é: R$", preco_final)

FimAlgoritmo