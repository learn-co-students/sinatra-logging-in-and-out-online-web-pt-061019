class Helpers

    def self.current_user(session_hash)
        @user_id = session_hash[:user_id]
        @user = User.find(@user_id)
    end 

    def self.is_logged_in?(session_hash)
        if session_hash[:user_id] != nil
            true
        else 
            false
        end
    end 

end