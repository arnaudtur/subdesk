json.array! @notifications do |notif|
    json.actor notif.actor
    json.action notif.action
    json.notifiable do
         json.type "a #{notif.notifiable.class.to_s.underscore.humanize.downcase}"
    end
    json.url chatroom_path(notif.notifiable.chatroom, anchor: dom_id(notif.notifiable))
end