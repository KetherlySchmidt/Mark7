#language:pt

Funcionalidade: Saque em conta corrente
    Sendo um cliente que é correntista do banco
    Posso sacar dinheiro
    Para poder comprar em lugares que não aceitam cartão

    @task1
    Cenario: Saque

    Dado que tenha uma conta com 1000 reais
    Quando faz um saque no valor de 200 reais
    Então 800 reais será o saldo final
    E deve ser exibida a seguinte mensagem "Saque com sucesso, muito obrigada!"

    @task2
    Cenario: Cliente não tem saldo disponivel

    Dado que tenha uma conta com 0 reais
    Quando faz um saque no valor de 100 reais
    Então 0 reais será o saldo final
    E deve ser exibida a seguinte mensagem "Saldo insuficiente para saque"

    @task3
    Cenario: Saque com valor acima do saldo disponivel

    Dado que tenha uma conta com 100 reais
    Quando faz um saque no valor de 200 reais
    Então 100 reais será o saldo final
    E deve ser exibida a seguinte mensagem "Saldo insuficiente para saque"

    @task4
    Cenario: Valor limite para saque

    Dado que tenha uma conta com 1000 reais
    Quando faz um saque no valor de 701 reais
    Então 1000 reais será o saldo final
    E deve ser exibida a seguinte mensagem "Valor maximo para transação deve ser de R$700!"
