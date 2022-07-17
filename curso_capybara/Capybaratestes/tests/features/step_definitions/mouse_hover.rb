Quando('clico em um botao') do
    visit '/iteracoes/mousehover'
    find('.activator').hover
    #find('.activator').hover.click
    sleep(10)
end


  
Então('verifico se o texto desapareceu na tela com sucesso') do
  
  end