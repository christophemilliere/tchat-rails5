module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connected
      self.current_user = find_verified_user
    end

    protected
    def find_verified_user
      if current_user = session[:username]
        current_user
      else
        reject_unauthorized_connection
      end
    end
  end
end
