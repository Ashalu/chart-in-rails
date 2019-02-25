class UsersController < ApplicationController
  def index
  	@user = User.all.order(pi: :asc)
  	@hash_of_data = User.common_data @user
  end
end
