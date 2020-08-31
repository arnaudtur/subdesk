class ChatroomsController < ApplicationController
    
    def new
      @chatroom = Chatroom.new()
      @chatroom.save
      authorize @chatroom
    end
    
    def show
      @chatroom = Chatroom.find(params[:id])
      @message = Message.new
      authorize @chatroom
    end
  end