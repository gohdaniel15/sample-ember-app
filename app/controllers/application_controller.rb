class ApplicationController < ActionController::Base

  # protect_from_forgery with: :exception

  helper FilepickerRails::Engine.helpers

  def after_sign_in_path_for(resource)
    admin_root_path
  end

end
