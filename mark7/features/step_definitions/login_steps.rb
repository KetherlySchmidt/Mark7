Dado('que o sistema seja acessado') do
  
    @login_page.acessa

end

Quando('faz login com {string} e {string}') do |email, senha|

    @login_page.logar(email,senha)

end

Então('deve ser exibida mensagem de boas vindas {string}') do |mensagem|
    @tarefas_page = TarefasPage.new
    expect(@tarefas_page).to have_content mensagem
end

Então('deve ser exibida a seguinte mensagem de alerta {string}') do |mensagem|
    expect(@login_page.alerta).to have_content mensagem
end