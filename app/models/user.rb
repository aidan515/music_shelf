class User < ActiveRecord::Base
	has_secure_password
	attr_accessible :name, :email, :password, :password_confirmation
	#set what variables the user can enter in the browser
	valid_email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: {with: valid_email_regex},uniqueness: {case_sensitive: false}
	validates :password, length: { minimum: 6}	
	#validates the email and password entries on sign-up page
end
