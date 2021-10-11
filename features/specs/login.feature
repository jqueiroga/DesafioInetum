#language: pt

Funcionalidade: Login
    Sendo um usuário cadastrado
    Quero acessar o sistema da AutomationPractice
    Para que eu possa realizar uma compra


    @register @teste1
    Cenario: Registrar um usuário de teste

        Dado que acesso a página principal
        Quando clico na opção Sign In
        E submeto um email para criar uma nova conta
        E preencho o formulário de cadastro
        Então sou redirecionado para a tela de MyAccount
        E verifico que estou devidamente logado


    @login @teste4
    Cenario: Realizar o Login com usuário registrado

        Dado que acesso a página principal
        Quando clico na opção Sign In
        E submeto minhas credenciais com usuário de teste
        Então sou redirecionado para o Tela Principal
        E verifico que estou logado como "JEREMIAS ARAUJO"




