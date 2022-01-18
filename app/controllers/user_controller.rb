class UserController < ApplicationController
    def login
        
    end
    def signup
    
    end
    def create
        @user =User.new(new_params)
        puts "*************************"
        if @user.save
            session[:user_id] = @user.id #create cookie if use cookie session it store in browser in encrypt format
            redirect_to :action => "login",notice:"Succesfully created account"
        else
            render :action =>"signup"

        end
    end



       private
        def user_params
            params.require(:user).permit(:email,:password,:repeatpassword)
        end
    end
