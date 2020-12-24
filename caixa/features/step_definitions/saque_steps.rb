require_relative '../../src/app'

Dado('que tenha uma conta com {int} reais') do |saldo_inicial|
# Dado('que tenha uma conta com {float} reais') do |float|
    @conta = Conta.new
    @conta.saldo = saldo_inicial
end

Quando('faz um saque no valor de {int} reais') do |valor_saque|
# Quando('faz um saque no valor de {float} reais') do |float|
    @conta.saque(valor_saque)

end

Então('{int} reais será o saldo final') do |saldo_final|
# Então('{float} reais será o meu saldo final') do |float|
    # puts @conta.saldo
    # puts saldo_final
    expect(@conta.saldo).to eql saldo_final
end

Então('deve ser exibida a seguinte mensagem {string}') do |mensagem|
    # puts @res
    # puts mensagem
    expect(@conta.mensagem_saida).to eql mensagem
end