class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    render 'pages/index'
  end

  def require_login
    unless user_signed_in?
      redirect_to root_path, notice: 'You must be logged in to access this section.'
    end
  end
end
