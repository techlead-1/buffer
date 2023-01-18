class RegistrationController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to root_path, notice: "Succesfully created an account on Buffer App"
        else
            render :new
        end
    end

    def user_params
        params.require(:user).permit(:email, :username, :password, :password_confirmation)
    end
end