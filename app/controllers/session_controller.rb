class SessionController < ApplicationController
    def new
    end

    def create 
        user = User.find_by(email: params[:email])
        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to root_path, notice: "Signed in successfully #{user.username}"
        else 
            flash[:error] = "Incorrect password or email"
            render :new
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "Logged out"
    end
end