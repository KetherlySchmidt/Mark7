Before do

    @login_page = LoginPage.new
    @side = Sidebar.new
    @tarefas_page = TarefasPage.new
    @nav = Navbar.new
    @perfil_page = PerfilPage.new
    @page_register = PageRegister.new

    page.current_window.resize_to(1440,900)

end

Before ('@login') do

    @usuario = {email: 'teste@teste.com', senha: '123456'}
    @login_page.acessa
    @login_page.logar(@usuario[:email], @usuario[:senha])

end

After('@logout') do
    @nav.sair

end