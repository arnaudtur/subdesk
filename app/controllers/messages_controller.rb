class MessagesController < ApplicationController

    def index
      @messages = policy_scope(Message.all)
    end
    def create
        @chatroom = Chatroom.find(params[:chatroom_id])
        @message = Message.new(message_params)
        @message.chatroom = @chatroom
        @message.user = current_user
        authorize @message
        if @message.save
          if @message.chatroom.booking.user == current_user
            Notification.create(recipient: @message.chatroom.booking.offer.user, actor: current_user, action: "posted", notifiable: @message)
          else
            Notification.create(recipient: @message.chatroom.booking.user, actor: current_user, action: "posted", notifiable: @message)
          end
            ChatroomChannel.broadcast_to(
                @chatroom,
                render_to_string(partial: "message", locals: { message: @message })
              )
              redirect_to chatroom_path(@chatroom, anchor: "message-#{@message.id}")
            else
          render "chatrooms/show"
        end
      end

private 

def message_params
  params.require(:message).permit(:content)
end

end
