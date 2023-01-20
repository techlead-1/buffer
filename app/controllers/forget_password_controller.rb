class ForgetPasswordController < ApplicationController
    def edit
    end 

    def create
        @user = User.find_by(email: params[:email])

        if @user.present?
        else
        end

        redirect_to root_path, notice: "If a user with that email is found, you will receive an email with instructions soon"
    end
end