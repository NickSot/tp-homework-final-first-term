class UsersController < ApplicationController
	def index

	end

	def login
		u = User.where user_params

		if u == []
			@message = "Credentials invalid!"
		else
			@message = "Successfully logged!"
		end

		session[:user] = u

		render 'index'
	end

	def new

	end

	def create
		User.create user_params

		render 'index'
	end

	def user_params
		return params.require(:user).permit(:email, :password)
	end
end
