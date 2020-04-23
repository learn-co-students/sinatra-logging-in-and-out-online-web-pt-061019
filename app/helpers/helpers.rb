class Helpers

  def self.current_user(session_hash)
    @user = User.find_by_id(session_hash[:user_id])
    @user
  end

  def self.is_logged_in?(session_hash)
    # if session_hash[:user_id]
    #   true
    # else
    #   false
    # end
    !!session_hash[:user_id]
  end

# is_logged_in? should also accept the session hash as an argument.
# This method should return true if the user_id is in the session hash and false if not. The Ruby !! operator will come in handy here.

end
