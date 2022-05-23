module SessionsHelper
    #log in given user
    def log_in(user)
        session[:user_id] = user.id
    end

    #returns current logged in user
    def current_user
            @curren_user ||= User.find_by(id: session[:user_id])
    end

    #returns true if user login false otherwise
    def logged_in?
        !current_user.nil?
    end

    def log_out
        session.delete(:user_id)    
        @current_user = nil
    end
end
