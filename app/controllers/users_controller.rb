class UsersController < ApplicationController
    def new
        @users = User.new
    end
 
    def create
        @users = User.create(user_params)
        if @users.save 
            @user.id = (session[:user_id])
            redirected_to root_path
        else
            redirected_to users_sign_up     
        end    
    end


    private
    def user_params
        params.require(:user).permit(:name, :email, :password)
    end    

end




