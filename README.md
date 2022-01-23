- Segundo passo da Criação 

    - Objetivos gerais desta aplicação
      - Criação do formulario e login e ajustes 
# Routes
    - get 'sing_up', to: 'registration#new'   
    - Contrller 
     - Criar arquivo, classe e new method
    - View
     - criar a pasta view/registrations
     - criar arquivo view/registrations/new.html.erb

<%= form_with model: @user, url: sign_up_path do |form| %> 
    <%form.text_field :email %>
    <%form.text_field :password %>
        <%form.text_field :password_confirnmation %>
    <%end%>
# Controle_Models_View

- Criação da tela de login
    - Criação do arquivo Main, Index
    - Validações dos usuarios e senhas dentro do banco de dados
    - Validações do botão de logout 
    - Ajustes nas rotas para chamar a tela de login inicial
    
