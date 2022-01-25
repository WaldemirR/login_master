class ApplicationController < ActionController::Base

    before_action   :set_current_user
    
    def set_current_user
    if session[:user_id]
        Current.user = User.find_by(id: session[:user_id])
       end
   end

   def require_user_logged_in!

    redirect_to sign_in_path, alert: "Para realizar esta ação você deve estar conectado no sistem, peço verificar e tentar novamente." if Current.user.nil?
  
    end
end
