class RegistrationsController < Devise::RegistrationsController

  protected

  def after_inactive_sign_up_path_for(resource)
    '/welcome/tasks.html.erb'
  end

  def after_sign_up_path_for(resource)
    '/welcome/tasks.html.erb' # Or :prefix_to_your_route
  end
end
