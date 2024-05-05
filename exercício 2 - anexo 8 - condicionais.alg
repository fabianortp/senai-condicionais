Algoritmo "DadosPessoa"

Função LerDadosPessoa(): registro
    Var
        pessoa: registro
    Início
        Escreva("Digite o nome da pessoa: ")
        Leia(pessoa.nome)
        Escreva("Digite o sexo da pessoa (M/F): ")
        Leia(pessoa.sexo)
        Escreva("Digite o estado civil da pessoa: ")
        Leia(pessoa.estado_civil)

        // Verifica se a pessoa é do sexo feminino e casada
        Se pessoa.sexo = "F" e pessoa.estado_civil = "CASADA" Então
            Escreva("Digite o tempo de casada (anos): ")
            Leia(pessoa.tempo_casada)
        FimSe

        // Retorna os dados da pessoa
        Retorne pessoa
    FimFunção

Procedimento MostrarDadosPessoa(pessoa: registro)
    Início
        Escreva("Dados da pessoa:")
        Escreva("Nome: ", pessoa.nome)
        Escreva("Sexo: ", pessoa.sexo)
        Escreva("Estado civil: ", pessoa.estado_civil)

        // Se for mulher casada, mostra o tempo de casada
        Se pessoa.sexo = "F" e pessoa.estado_civil = "CASADA" Então
            Escreva("Tempo de casada: ", pessoa.tempo_casada, " anos")
        FimSe
    FimProcedimento

Inicio
    // Declaração do registro para armazenar os dados da pessoa
    Tipo DadosPessoa:
        nome: caractere[50]
        sexo: caractere
        estado_civil: caractere[50]
        tempo_casada: inteiro

    // Variável para armazenar os dados da pessoa
    pessoa: DadosPessoa

    // Chamando a função para ler os dados da pessoa
    pessoa <- LerDadosPessoa()

    // Chamando o procedimento para mostrar os dados da pessoa
    MostrarDadosPessoa(pessoa)
FimAlgoritmo