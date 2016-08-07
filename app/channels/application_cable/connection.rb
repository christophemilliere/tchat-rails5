module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connected
      self.current_user = '@@@@@@@@@'
    end
  end
end
