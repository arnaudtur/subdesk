class ChatroomsController < ApplicationController
    
    def new
      @chatroom = Chatroom.new()
      @chatroom.save
      authorize @chatroom
    end
    
    def show
      @chatroom = Chatroom.find(params[:id])
      @message = Message.new
      @notifications = Notification.all.where(recipient: current_user).where(read_at: nil)
      @notifications.each do |notif|
        notif.delete
      end
      authorize @chatroom
    end
  end