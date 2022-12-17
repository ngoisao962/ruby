class LoginController < ApplicationController
    def new
    end
    def create
        user = User.find_by(username: params[:username])
        
        if user!= nil && params[:password] == user[:password_digest]
            redirect_to '/demo' , notice: "ok"
        else
            redirect_to log_in_path
            flash.now[:alert] = 'Error while sending message!'
        end
    end
end
