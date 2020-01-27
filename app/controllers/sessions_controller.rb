class SessionsController < ApplicationController
    def destroy
        reset_session
        redirected_to root_path
    end     
end
