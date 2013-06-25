class UrlsController < ActionController::Base
  # protect_from_forgery

  def index
    @urls = Url.find_all_by_user_id(params[:user_id])
    p @urls
  end

  def create
    "create"
  end

  def new
    "new"
  end

  def destroy
    "destroy"
  end
end
