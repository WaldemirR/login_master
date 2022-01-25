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
# Current

- Mudando os parametros e validações de login 
    -  Criação da pasta Current para jogarmos as solicitações e validações de senhas mais seguros 
    -  Colocas os parametros que estavam dentro do MAIN para dentro do ApplicationCOntroler (ApplicationController < ActionController::Base.)
    - Acrescentar o def set_current_user (aqui posso definir o que cada usuario pode ver ou acesssar)
    - Criar a arquivo current.rb dentro da pasta Models
    - Dentro da pasta criar para onde o arquivo irá apontar 
    - Acrescentar dentro  before_action :set_current_user
    - Dentro de ApplicationController < ActionController::Base acrescenta o before_action: set_current_user, antes que qulaquer ação for executadas vamos chamar o set current, está será a primeira ação que irá acontecer ao usuario.
    - Navbar adicionada na lateral superior para Cadastro e Entrar no sistema.

# Password Edit e Password Update
- Criação de dois link para editar Senha e Senha esquecida

    - Criação do arquivo em nosso Controller (password_controller.rb)
    - Verificação se o usuario está logaddo no sistema (before_action :require_user_logged_in!
)
    - Adicionando condicional caso o usuario não esteja logado no sistema (    redirect_to sign_in_path, alert: "Para realizar esta ação você deve estar conectado no sistem, peço verificar e tentar novamente." if Current_user.nil?
    )
    - Adicionando FORM para edição de senha dentro do new.edit.rb com os parametros adicionados dentro do application_controller.rb
    - Ajuste da rota de PasswordsController < applicationController para PasswordsController < ApplicationController, atenção ao descrever as rotas pois devem seguir um padrão, detectei este erro onde o Application estava com o A minusculo, dando erro ao buscar o link de edição da senha.
    - Inclindo o link para aleração de senha no menu de entrar no sistema
# Formulario para coletar dados para controle de quilometragem

- Criação do banco de dados (ails generate scaffold quilometragem date:string  name:string state:string city:string addres:string client:string board:string startingkm:string finalkm:string )
- Criação do formulario para coletar dados postados nele.
- Alterações dentro do formulario para preparar para a utilização []



    
