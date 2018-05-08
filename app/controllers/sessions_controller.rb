class SessionsController < ApplicationController

	def create
		user = User.new(user_params)
		if user.save
        	render json: user, status: :created
      	else
        	render json: user, status: :unprocessable_entity,
                       serializer: ActiveModel::Serializer::ErrorSerializer
      	end

	end
	def signinUser
		user = User.where(email: user_params[:email]).first
		if user.present?
			if user.valid_password?(user_params[:password])
				render json: user, status: :created
			else
				head(:unauthorized)
				# render json: data[status: :unautorized]
			end
		else
			head(:unauthorized)
		end
	end
	def getUsers
		user = User.where(isSuperUser: true)
		render json: user, status: :created
		
	end
	def destroy
		
	end

	private
	def user_params
		params.require(:user).permit(:email,:password, :password_confirmation)
	end
end
