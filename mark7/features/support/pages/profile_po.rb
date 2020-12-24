class PerfilPage
    include Capybara::DSL#disponibiliza para todas as paginas

    def alerta_cadastro
        find('.panel-body')

    end

    def completa_cadastro(empresa, cargo)

        find('#profile-company').set empresa

        combo = find('select[name$=job')

        combo.find('option', text: cargo).select_option

        click_button 'Salvar'

    end

end