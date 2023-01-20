class UpdateController < ApplicationController
    before_action :user_signed_in

    def edit
    end

    def update
        if Current.user.update(update_params)
            redirect_to root_path, notice: "Profile updated"
        else
            render :edit
        end
    end

    private 
    
    def update_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end