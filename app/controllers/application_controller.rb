class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  @giant_bomb_key = "915782850798f7f647abac926e3f67aaab052c81"
end
