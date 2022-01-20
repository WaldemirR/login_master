class MainController < ApplicationController
    def index
        flash.now[:notice] = "Login efetuado com sucesso!"
        flash.now[:alert] = "Verifique e-mail e senha fornecidos"
    end
end