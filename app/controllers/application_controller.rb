class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Register custom flash types
  # :error and :notice already exist
  add_flash_types :success
  add_flash_types :alert
end
