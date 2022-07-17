
class MapeandoElementoPage < SitePrism::Page
    set_url '/users/new'

    element :nome, '#user_name'
    nome = #user_name

    def preencher
        nome.set 'beatriz'
    end
 

end


    
  