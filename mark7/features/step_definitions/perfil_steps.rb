Dado('que esteja autentificado com {string} e {string}') do |email, senha|

    @login_page.acessa
    @login_page.logar(email,senha)

end

Dado('acessa o perfil') do
    @side.acessa_perfil
end

Quando('completa o cadastro com {string} e {string}') do |empresa, cargo|
    @perfil_page.completa_cadastro(empresa, cargo)
end

Então('deve ser exibida a mensagem de atualização cadastral:') do |mensagem|
    expect(@perfil_page.alerta_cadastro).to have_content mensagem
end