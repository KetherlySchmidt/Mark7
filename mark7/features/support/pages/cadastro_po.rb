class PageRegister
    include Capybara::DSL

    def form
        visit '/login'
        # find('a[href="/register"]').click
        click_on 'Clique aqui'

    end

    def alerta
        find(".alert-message")
    end

    def cadastrar(nome, email, senha)
        find("#register_name").set nome
		find("#register_email").set email
        find("#register_password").set senha
        click_on 'Cadastrar'
    end
    
end