class User < ActiveRecord::Base

	def index
		@users = User.all
	end

	def new
		@user = User.new

	def create
		@User = User.create(params.require(:user).permit(:username, :email, :dob))
	end

end
`