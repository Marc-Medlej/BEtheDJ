class ApplicationController < ActionController::Base
  # def default_url_options
  #  { host: ENV["DOMAIN"] || "localhost:3000" }
  # end
  # before_action :authenticate_user!, except: root_path
  #need a way to skip authenticating the home page

  # before_action :configure_permitted_parameters, if: :devise_controller?

  # def configure_permitted_parameters
  #   # For additional fields in app/views/devise/registrations/new.html.erb
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :dj_name])
  # end

  def default_url_options
    { host: ENV["www.bethedj.club"] || "localhost:3000" }
  end
end
