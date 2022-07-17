Quando('eu entro na janela e verifico a mensagems') do                          
 visit '/mudancadefoco/janela'


 #janela recebe uma janela que foi aberta pelo link
 janela = window_opened_by do
    click_link 'Clique aqui'

 end

  #muda de foco para a janela
 within_window janela do

    expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
    @mensagem = find('.red-text.text-darken-1.center')
    expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'

    janela.close
 end
 sleep(5)

 #segunda opcao


 click_link 'Clique aqui'

#mudando para a ultima aba
 switch_to_window windows.last

 expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
 @mensagem = find('.red-text.text-darken-1.center')
 expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'

 windows.last.close
 sleep(5)

end
                                                                          
  


Quando('eu entro no alert e verifico faco a acao') do 

   visit '/mudancadefoco/alert'
   find('button[onclick="jsAlert()"]').click
   page.accept_alert


   find('button[onclick="jsConfirm()"]').click
   page.dismiss_confirm

   find('button[onclick="jsPrompt()"]').click
   page.accept_prompt(with: 'beatriz almeida')
   #page.dismiss_prompt

  
end                                                                             
                                                                                  