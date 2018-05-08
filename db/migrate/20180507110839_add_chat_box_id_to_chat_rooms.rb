class AddChatBoxIdToChatRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :chat_rooms, :chat_box_id, :integer
  end
end
