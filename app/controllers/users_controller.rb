class UsersController < ActionController::Base
  # protect_from_forgery

  def index
    @user = User.new
  end

  def create
    "create"
  end

  # def new
  # end

  def destroy
    "destroy"
  end
end
