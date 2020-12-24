#language:pt

Funcionalidade: Meu perfil
    Para que possa ser mantido os dados atualizados
    Sendo um Usuario
    Pode completar o cadastro do perfil

    @logout
    Esquema do Cenario: atualizar perfil

        Dado que esteja autentificado com "<email>" e "<senha>"
        E acessa o perfil
        Quando completa o cadastro com "<empresa>" e "<cargo>"


        Então deve ser exibida a mensagem de atualização cadastral:
        """
        Perfil atualizado com sucesso.
        """

        Exemplos:

            |email           |senha |empresa  |cargo     |
            |teste@teste.com |123456|Yahoo    |Developer |
            |teste2@teste.com|123456|Google   |QA        |
            |teste3@teste.com|123456|Microsoft|CEO       |
            |teste4@teste.com|123456|Linkedin |CTO       |
            |teste5@teste.com|123456|Facebook |Estagiario|