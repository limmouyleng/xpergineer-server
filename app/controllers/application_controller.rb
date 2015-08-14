class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  before_filter :set_request_header
  protect_from_forgery with: :exception

  def set_request_header
    headers['Access-Control-Allow-Origin'] = '*' 
  end

end
