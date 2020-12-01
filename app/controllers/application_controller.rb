class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception,:except => [:user_login]
  before_action :require_login
  attr_reader :current_user

  private

  def authenticate_request
    @current_user = AuthorizeApiRequest.call(request.headers).result
    # redirect_to '/login' unless @current_user
  end

  def require_login
    if !session[:auth_code].present?
      render :'users/login'
    end
  end
end
