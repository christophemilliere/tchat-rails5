class MessagesController < ApplicationController
  def index
    if session[:username].nil?
      return redirect_to new_session_path
    end
    @messages = Message.limit(50)
  end

  def demo
    ActionCable.server.broadcast('demo', { content: 'Salut les amis' })
  end
end
