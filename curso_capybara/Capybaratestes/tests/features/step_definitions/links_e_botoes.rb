Quando('clico em botoes') do
    visit '/'
    click_on('Começar Automação Web') 
    visit '/buscaelementos/botoes'
    click_button(class: 'btn waves-light')
    find('a[onclick="ativaedesativa2()"').click
    find('a[onclick="ativaedesativa2()"').double_click
    find('a[onclick="ativaedesativa3()"').right_click
    visit '/'
    click_link('Github' )
    sleep(30)
  end
  #click_link_or_button sao identicos