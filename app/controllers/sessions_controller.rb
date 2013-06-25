class SessionsController < ActionController::Base
  
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id 
    end
    redirect_to user_urls_path(user)
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

end
