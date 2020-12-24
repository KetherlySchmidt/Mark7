class Navbar

    include Capybara::DSL#disponibiliza para todas as paginas

    def sair
        find('.navbar a[href*=dropdown]').click
        find('.navbar a[href$=logout]').click

    end

end

class Sidebar

    include Capybara::DSL#disponibiliza para todas as paginas

    def acessa_perfil
        within('aside[class=navigation]') do#dentro da barra de navegação clica em perfil
            click_link 'Perfil'
        end
    end

end