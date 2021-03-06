class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :check_for_created_profile

  def check_for_created_profile
  	if user_signed_in?
  	  if Profile.find_by_user_id(current_user.id).blank?
  	    redirect_to new_profile_path
   	  end
    end
  end

  def check_signed_in
    if not user_signed_in?
      redirect_to root_path
    end
  end

  def check_is_admin
    if not current_user.id == 1
      redirect_to root_path
    end
  end

end
