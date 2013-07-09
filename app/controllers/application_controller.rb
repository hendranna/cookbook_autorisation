class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  rescue_from CanCan::AccessDenied do |exception|
  	redirect_to root_url, alert: "You can't access this page"
  end

  def logged_in?
  !!current_user
end

private

# def can_access_route
# 	can = Ability.authorized? current_user, params[:controller], params[:action]

# 	unless can
# 		redirect_to root_url
# 	end
# end

def authenticate
  unless logged_in?
    flash[:error] = "You must be logged in to access this section of the site"
    redirect_to login_url
  end
end

  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

end
