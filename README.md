- Primeira Aplicação em Rails 

    -  Mkdir login - criação da pasta dentro do diretorio C: do pc
    -  rails new login_master - criação da aplicação login_master
    -  rails s (rails server) - liga o servidor rails
    -  git status - verificar status para fazer o git commit -m
    -  git add - adicionar primeiro commit
    -  git commit -m - adicionando commit na aplicação
    -  git staus - verificar se  git commit foi realizado
    -  git branch -M main - mudar o nome da branch para main
    -  git remote add origin git@github.com:WaldemirR/login_master.git - adicionar no remote
    - git remote -v - verificar se está ok com o git remote
    - git push -u origin main - subir codigo no git

- Modelo MVC

    - Model: link com base de dadis 
    - View: Visualização
    - Controller: Aciona o método desejado dentro do controller
    - Routes: Aciona o método desejado dentro do controller

- Criação da pagina "about"

    - Route - http://localhost:3000/rails/info/routes
    - Controller
    - View
    - VIsualizar a página

- Trocar página root

    - Modo de trocar a pagina via root 
    - Routes (métodos de ter rotas de diferentes modelos para visualizar na pagina)
    - Controller
    - View
    - visualizar pagina 
- Push para o github

- Adicionado o Boostrap
    - Adicionando o link do Css no loyout aplication
    - Adicionando o lonk do Budle no loyout aplication
    - Aplicando classe "d-flex algin-items-center justify-content-center"
    
- Layout
    - div class container
    - Booststrap navbar
    - Aleração para os codigo de html para os helpers do Ruby
    - Alteração das brands 

- Definido paramentros para acessar a pagina
    
    - Controler - definir
    - Aplication - criação do render partial
    - layout - criação do arquivo Flash.html.erb para inclusão das flash
    - flash menssagens  -hash
    - flash[:notice] = "Login efetuado com sucesso!" - inclusão o que deverá ser informado ao usuario
    - flash[:alert] = "Verificar e-mail e senha fornecidos" - inclusão o que deverá ser informado ao usuario
    - Adicionado o flash.now para limpar cache
    - No controler - flash.now aparecerá apenas na primeira requisição
    

