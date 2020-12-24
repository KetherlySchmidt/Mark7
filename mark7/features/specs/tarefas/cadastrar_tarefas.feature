#language: pt

Funcionalidade: Cadastro de tarefas

    Para que possa organizar minha vinda
    Sendo um usuario cadastrado
    Pode adicionar novas tarefas no painel

    @smoke @login @logout
    Cenario: Nova tarefa
        Dado que o nome da tarefa seja "Fazer Compras"
        E a data de finalização seja "25/12/2020"
        E vinculo essa tarefa com:
            |tag         |
            |Compras     |
            |Supermercado|
            |Ketchup     |
        Quando é feito o cadastro desta tarefa
        Então deve ser exibido a tarefa com o status "Em andamento"

    @tentativa @login @logout
    Esquema do Cenario: Tentar cadastrar
        Dado que o nome da tarefa seja "<nome>"
        E a data de finalização seja "<data>"
        Quando é feito o cadastro desta tarefa
        Então deve ser exibido a mensagem "<mensagem>"

        Exemplos:
            |nome|data      |mensagem                           |
            |ler |26/12/2020|10 caracteres é o mínimo permitido.|
            |    |26/12/2020|Nome é obrigatório.                |

    @login @logout @dup
    Cenario: Tarefa não pode ser duplicada
        Dado que o nome da tarefa seja "ler um livro de banco"
        E a data de finalização seja "27/12/2020"
        Mas essa tarefa já foi cadastrada
        Quando é feito o cadastro desta tarefa
        Então deve ser exibido a mensagem "Tarefa duplicada."
        E deve ser exibido somente 1 tarefa com o nome cadastrado