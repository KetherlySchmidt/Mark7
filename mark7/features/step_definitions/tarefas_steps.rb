# require 'faker'

Dado('que o nome da tarefa seja {string}') do |nome_tarefa|
    @nome_tarefa = nome_tarefa
    DAO.new.remover_tarefas(@nome_tarefa,  @usuario[:email])
    # @nome_tarefa = "#{nome_tarefa} - #{Faker::Lorem.characters(number: 10)}"
end

Dado('a data de finalização seja {string}') do |data_finalizacao|
    @data_tarefa = data_finalizacao
end

Dado('vinculo essa tarefa com:') do |tags|
# table is a Cucumber::MultilineArgument::DataTable
    @tags = tags.hashes

end

Dado('essa tarefa já foi cadastrada') do
    steps %(
        Quando é feito o cadastro desta tarefa
    )
end

Quando('é feito o cadastro desta tarefa') do
    @tarefas_page.cadastrar(@nome_tarefa, @data_tarefa)
end

Então('deve ser exibido a tarefa com o status {string}') do |status_tarefa|
    
    expect(
        @tarefas_page.buscar_tr(@nome_tarefa)
        ).to have_content status_tarefa
end

Então('deve ser exibido a mensagem {string}') do |mensagem_alerta|
    expect(@tarefas_page.alerta).to eql mensagem_alerta
end

Então('deve ser exibido somente {int} tarefa com o nome cadastrado') do |quantidade|
    # Então('deve ser exibido somente {float} tarefa com o nome cadastrado') do |float|
    res = DAO.new.buscar_tarefa(@nome_tarefa,  @usuario[:email])
    expect(res.count).to eql quantidade
end