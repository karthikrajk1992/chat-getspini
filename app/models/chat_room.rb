class ChatRoom < ApplicationRecord
	belongs_to :user
	belongs_to :chat_box
	
end
