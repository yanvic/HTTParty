#language: pt

Funcionalidade: Pesquisar Funcionarios
    Para averiguar informacoes
    o usuario do sistema
    deseja poder consultar informacoes dos funcionarios
    @cenario_um
    Cenario: Buscar informacoes de funcionario
        Dado que o usuario consulte informacoes de funcionario
        Quando ele realizar a Pesquisa
        Entao uma lista de funcionario deve retornar 

    @cenario_dois
    Cenario: Cadastrar funcionario
        Dado que o usuario cadastre um novo funcionario
        Quando ele inserir as informacoes do funcionario
        Entao esse funcionario sera cadastrado

    @cenario_tres
    Cenario: Atualização de informações de funcionário
        Dado que o usuario altere informacoes de um funcionario
        Quando ele inserir as novas informacoes
        Entao as informacoes serao alteradas
    
    
    @cenario_quatro
    Cenario: Deletar informacoes de um funiconario
        Dado que o usuario delete informacoes de um funcionario
        Quando ele inserir o id do funcionario
        Entao as informacoes serao deletadas
