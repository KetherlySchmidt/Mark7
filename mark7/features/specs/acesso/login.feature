#language:pt

Funcionalidade: Login
    Para se possa cadastrar e gerenciar minhas tarefas
    Sendo um Usuario
    Posso acessar o sistema com um email e senha previamente cadastrado

    Contexto: Home
        Dado que o sistema seja acessado

        @sprint1 @logout
        Cenario: Usuario autentificado

            Quando faz login com "teste@teste.com" e "123456"
            Então deve ser exibida mensagem de boas vindas "Olá, teste"

        Esquema do Cenario: Tentativa de login
            Quando faz login com "<email>" e "<senha>"
            Então deve ser exibida a seguinte mensagem de alerta "<saida>"
            
            Exemplos:
            |email             |senha   |saida                     |
            |teste@teste.com   |dgfiosdf|Senha inválida.           |
            |testando@teste.com|dgfiosdf|Usuário não cadastrado.   |
            |                  |dgfiosdf|Email incorreto ou ausente|
            |teste@teste.com   |        |Senha ausente             |
            |testandoteste.com |dgfiosdf|Email incorreto ou ausente|
        
        # @sprint1
        # Cenario: Senha incorreta

        #     Quando faz login com "teste@teste.com" e "dgfiosdf"
        #     Então deve ser exibida a seguinte mensagem de alerta "Senha inválida."

        # @sprint1
        # Cenario: Usuario não cadastrado

        #     Quando faz login com "testando@teste.com" e "dgfiosdf"
        #     Então deve ser exibida a seguinte mensagem de alerta "Usuário não cadastrado."

        # @sprint2
        # Cenario: Email deve obrigatório

        #     Quando faz login com "" e "dgfiosdf"
        #     Então deve ser exibida a seguinte mensagem de alerta "Email incorreto ou ausente"

        # @sprint2
        # Cenario: Senha deve ser obrigatório

        #     Quando faz login com "teste@teste.com" e ""
        #     Então deve ser exibida a seguinte mensagem de alerta "Senha ausente"