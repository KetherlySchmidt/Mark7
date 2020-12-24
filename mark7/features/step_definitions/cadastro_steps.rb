require "faker"

Dado("que esteja no formulário de cadastro") do
    @page_register.form
end

Dado("inserir os dados {string} e {string} e {string}") do |nome, email, senha|
    @nome = nome
    @email = email + Faker::Lorem.characters(number: 3)
    @senha = senha
end

Dado("que inserir os dados {string} e {string} e {string}") do |nome, email, senha|
    @nome = nome
    @email = email
    @senha = senha
end

Quando("realizar cadastro") do
    @page_register.cadastrar(@nome, @email, @senha)
end

Então("devera ser exibido a mensagem de boas vindas {string}") do |mensagem|
    expect(@tarefas_page.painel).to have_content mensagem
end

Então("devera ser exibido a mensagem de alerta {string}") do |mensagem|
    expect(@page_register.alerta).to have_content mensagem
end
