class CreateChatBoxes < ActiveRecord::Migration[5.2]
  def change
    create_table :chat_boxes do |t|
      t.integer :main_user
      t.integer :secondary_user

      t.timestamps
    end
  end
end
