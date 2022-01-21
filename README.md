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
