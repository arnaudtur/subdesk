class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  include Pundit

  # Pundit: white-list approach.
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?
  before_action :configure_permitted_parameters, if: :devise_controller?

  # Uncomment when you *really understand* Pundit!
  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # def user_not_authorized
  #   flash[:alert] = "You are not authorized to perform this action."
  #   redirect_to(root_path)
  # end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
  devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :hq_address, :year_of_creation,:description,:number_of_employees,:average_age,:field,:weblink,:criteria1,:criteria2,:criteria3,:criteria4, :photo])
  devise_parameter_sanitizer.permit(:account_update, keys: [:name, :hq_address, :year_of_creation,:description,:number_of_employees,:average_age,:field,:weblink,:criteria1,:criteria2,:criteria3,:criteria4, :photo])
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end

