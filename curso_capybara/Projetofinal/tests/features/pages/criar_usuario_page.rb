class User < SitePrism::Page
    set_url 'users/new'
    element :nome, '#user_name'
    element :sobrenome, '#user_lastname'
    element :email, '#user_email'
    element :endereco, '#user_address'
    element :universidade, '#user_university'
    element :profissao, '#user_profile'
    element :genero, '#user_gender'
    element :idade, '#user_age'

    element :criar, 'input[value="Criar"]'

    def preencher_usuario
        nome.set 'beatriz'
        sobrenome.set 'almeida'
        email.set 'debora.beatriz84791@gmail.com'
        endereco.set 'Sao paulo'
        universidade.set 'uninove'
        profissao.set 'estagiaria'
        genero.set 'feminino'
        idade.set '22'
        criar.click
    end
end
 