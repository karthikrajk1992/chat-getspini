class CreateChatRoom < ActiveRecord::Migration[5.2]
  def change
    create_table :chat_rooms do |t|
      t.integer :user_id
      t.text :msg_text
      t.integer :message_to
      t.timestamps
    end
  end
end
