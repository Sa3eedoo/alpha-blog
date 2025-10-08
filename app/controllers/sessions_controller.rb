class SessionsController < ApplicationController

    def new
    end

    def create
        user_email = params[:session][:email].downcase
        user_password = params[:session][:password]
        user = User.find_by(email: user_email)

        if user && user.authenticate(user_password)
            session[:user_id] = user.id
            flash[:success] = "You have successfully logged in"
            redirect_to user
        else
            flash.now[:alert] = "There was something wrong with your login details"
            render 'new'
        end
    end

    def destroy
        session[:user_id] = nil
        flash[:notice] = "Logged out"
        redirect_to root_path
    end

end