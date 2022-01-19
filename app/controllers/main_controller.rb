class MainController < ApplicationController
    def index
        flash.now[:notice] = "Login efetuado com sucesso!"
        flash.now[:alert] = "Verificar e-mail e senha fornecidos"
    end
end