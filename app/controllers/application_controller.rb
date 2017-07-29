class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def after_sign_in_path_for(resource)
    if resource.class == Admin && current_admin
      admin_dashboard_path
    elsif resource.class == Student && current_student
      student_dashboard_path
    else
      super
    end
  end

  #
  ## After sign-out path for resource
  #
  def after_sign_out_path_for(resource)
    if resource == :admin
      home_path = "/admin/sign_in"
    elsif resource == :student
      home_path = "/student/sign_in"
    else
      super
    end
  end
end
