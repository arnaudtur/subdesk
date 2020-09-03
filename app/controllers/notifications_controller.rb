class NotificationsController < ApplicationController
  before_action :authenticate_user!
  
    def index
      user_logged = current_user
      @notifications = policy_scope(Notification.where(recipient: user_logged).unread)
    end

    def mark_as_read
      user_logged = current_user
      @notifications = policy_scope(Notification.where(recipient: user_logged).unread)
      @notification.update_all(read_at: Time.zone.now)
      render json: {success: true}
    end

end