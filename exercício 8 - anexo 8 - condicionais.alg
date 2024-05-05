Algoritmo "LojaDeCDs"

Função ObterPreco(cor: caractere): real
Var
    preco: real

Inicio
    Escolha cor Faça
        Caso "Verde"
            preco <- 10.00
        Caso "Azul"
            preco <- 20.00
        Caso "Amarelo"
            preco <- 30.00
        Caso "Vermelho"
            preco <- 40.00
        Caso Contrário
            Escreva("Cor inválida!")
            preco <- 0
    FimEscolha
    Retorne preco
FimFunção

Inicio
    Defina cor: caractere
    Escreva("Digite a cor do CD (Verde, Azul, Amarelo ou Vermelho): ")
    Leia(cor)

    // Chamando a função para obter o preço
    Se ObterPreco(cor) <> 0 Então
        Escreva("O preço do CD é: R$", ObterPreco(cor))
    FimSe
FimAlgoritmo