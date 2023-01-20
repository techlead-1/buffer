class ApplicationController < ActionController::Base
    before_action :set_current_user

    def set_current_user
        if session[:user_id]
            Current.user = User.find_by(id: session[:user_id])
        end
    end

    def user_signed_in
        if session[:user_id].nil?
            flash[:error] = "You have to be signed in"
            redirect_to root_path
        end
    end
end
