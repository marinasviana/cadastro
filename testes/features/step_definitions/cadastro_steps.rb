Dado("que o usuário está na pagina de cadastro") do
  cadastrado.load
end

Quando("ele clicar em adiconar") do
 cadastrado.wait_for_adicionar_btn(10)
 cadastrado.adicionar
end

Quando("inserir os dados solicitados") do |table|
  cadastrado.informardados_para_cadastro(table.rows_hash['nome'], table.rows_hash['sobrenome'], table.rows_hash['email'] )
  cadastrado.salva_cadastro
  
end

Quando("inserir os dados solicitados {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}") \
        do |nome, sobrenome, email, data_nascimento, ddd, numero, empresa, notas|
  cadastrado.informardados_para_cadastro(nome, sobrenome, email, data_nascimento, ddd, numero, empresa, notas)
  
end

Então("um novo usuário deve ser cadastrado com sucesso") do
  cadastrado.salva_cadastro
  expect(cadastrado.confirmacao_cadastro.text).to eql('Usuário criado com sucesso. :)') 
  cadastrado.ok
end

Então("um novo usuário não deve ser cadastrado com sucesso") do
  if !(cadastrado.salvar.disabled?)
     cadastrado.salva_cadastro 
     expect(cadastrado.confirmacao_cadastro.text).not_to include('Usuário criado com sucesso. :)')  
     cadastrado.ok
  end

end

