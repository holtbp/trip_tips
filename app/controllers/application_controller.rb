class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  before_filter :logged_in?, except: [:index, :logout]

  def index
  end

  def login
    redirect_to getaways_path
  end

  def logout
    redirect_to root_path
  end

  private

  def logged_in?
    @login = true
  end
end
