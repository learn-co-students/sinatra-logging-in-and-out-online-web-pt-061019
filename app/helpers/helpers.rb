class Helpers

    def self.current_user(session)
        @user = User.find(session[:user_id])
        # user_id = session[:user_id]
        # user = User.find(user_id)
        # user
    end


    def self.is_logged_in?(session)
        !!session[:user_id]
        # if session[:user_id]
        #     return true
        # else 
        #     return false
        # end
    end

end