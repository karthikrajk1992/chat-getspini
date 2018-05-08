class ChatBoxesController < ApplicationController

	def create
		binding.pry
		@new_chat = ChatBox.new(user_params)
		render json: @new_chat, status: :created if @new_chat.save
	end

	private
	def user_params
		params.require(:chat_box).permit(:main_user,:secondary_user,:message)
	end
end




# chatBox = ChatBox.where(main_user: user_params[:main_user],secondary_user: user_params[:secondary_user]).first
# 		if chatBox.present?
# 			binding.pry
# 			new_message = ChatRoom.new(user_id:user_params[:main_user],msg_text: user_params[:message],message_to: user_params[:secondary_user],chat_box_id: new_chat.id)
# 		else
# 			binding.pry
# 			@new_chat = ChatBox.new(main_user: user_params[:main_user],secondary_user: user_params[:secondary_user])
# 			if @new_chat.save!
# 				binding.pry
# 				new_message = ChatRoom.create(user_id:user_params[:main_user],msg_text: user_params[:message],message_to: user_params[:secondary_user],chat_box_id: new_chat.id)
# 			else
# 				head(:unauthorized)
# 			end

# 		end