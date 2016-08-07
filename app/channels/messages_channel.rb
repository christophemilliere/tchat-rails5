# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "messages"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    message = Message.create(content: data['message'])
    html = ApplicationController.render(partial:'messages/message', locals: { message: message})
    ActionCable.server.broadcast('messages', message: html)
  end
end
