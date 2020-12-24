#language: pt
Funcionalidade: Cadastro de usuários

	Contexto: Formulário
		Dado que esteja no formulário de cadastro
	
		@cadastro @logout
		Cenário: Cadastro usuário
			E inserir os dados "Testando5" e "teste@teste.com" e "123456"
			Quando realizar cadastro
			Então devera ser exibido a mensagem de boas vindas "Olá, Testando5"

		@cadastro
		Esquema do Cenário: Campos obrigatórios
			E que inserir os dados "<nome>" e "<email>" e "<senha>"
			Quando realizar cadastro
			Então devera ser exibido a mensagem de alerta "<saida>"

			Exemplos:
				| nome       | email           | senha  | saida                |
				|            | teste@teste.com | 123456 | Nome é obrigatório.  |
				| testando78 |                 | 123456 | Email é obrigatório. |
				| testando78 | teste@teste.com |        | Informe uma senha.   |