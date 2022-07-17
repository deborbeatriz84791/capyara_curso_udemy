Quando('eu faco cadastro') do
   visit '/users/new'
   fill_in(id="user_name", with: 'beatriz')
   find('#user_lastname').set('almeida')
   find('#user_email').send_keys('debora.beatriz84791@gmail.com')
   fill_in(id="user_address", with: 'rua arizona')
   find('#user_university').set('uninove')
   find('#user_profile').send_keys('estudante')
   fill_in(id="user_gender", with: 'feminino')
   find('#user_age').set('22')
   find('input[value="Criar"]').click
  end 
  
  Entao('verifico se fui cadastrado') do
  texto = find('#notice')
  expect(texto.text).to eql 'Usuário Criado com sucesso'
  end
    
    
   