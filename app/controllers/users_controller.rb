class UsersController < ApplicationController
	def new
		@user = User.new
	end
	#Creates a new user instance
	def create
		@user = User.new(params[:user])
		if @user.save
			session[:user_id] = @user.id
			redirect_to user, notice: "Thank you for signing up!"
		else
			render "new"
		end
	#Saves the user to the database or re-displays the form if there are problems
	end
	
	def show
		@user = User.find(params[:id])
	end
end
