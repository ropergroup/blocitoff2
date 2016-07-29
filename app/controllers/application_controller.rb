class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  def after_sign_up_path_for(resource)
    '/welcome/tasks.html.erb' # Or :prefix_to_your_route
  end

end
