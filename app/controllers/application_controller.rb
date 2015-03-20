class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_site

  def storytime_post_param_additions
    attrs = [:start_time, :end_time, :city, :zipcode, :street]
    attrs
  end

  def current_site
    @current_site ||= Storytime::Site.first
  end
end
