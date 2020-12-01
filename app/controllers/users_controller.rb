class UsersController < ApplicationController
  # skip_before_action :authenticate_request

  def authenticate
    command = AuthenticateUser.call(params[:email], params[:password])

    if command.success?
      session[:auth_code] = command.result['auth_token']
      session[:user_detail] = command.result['user_detail']
      puts "*****#{session[:user_detail]}"
      page_name =  '/blogs'
    else
      page_name =  '/login?status=1'
    end
    redirect_to page_name
  end

  def login

  end
end
