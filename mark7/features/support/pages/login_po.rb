class LoginPage
    include Capybara::DSL#disponibiliza para todas as paginas

    def acessa

        visit '/login'

    end

    def alerta
        find('.alert-login')
    end

    def logar(email, senha)
        find('#login_email').set email
        find('#login_password').set senha
        find('button[id*=btnLogin]').click
    end

end