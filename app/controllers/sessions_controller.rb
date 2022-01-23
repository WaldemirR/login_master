class SessionsController < ApplicationController
    def new
    end


    def create
        user = User.find_by(email: params[:email])
        if user.present? && authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to root_path, notice: "Logado com sucesso"
        else
            flash[:alert] = "E-mail ou senha inválido, favor verificar e tentar novamente"
            render :new
    end
    
    
    
    
    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "Desconectado"

    end
end