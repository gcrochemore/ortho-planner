class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_paper_trail_whodunnit

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|      
      format.json { head :forbidden, content_type: 'text/html' }        
      format.html { redirect_to after_sign_in_path_for(current_user), alert: exception.message }        
      format.js   { head :forbidden, content_type: 'text/html' }        
    end     
  end

  rescue_from ActiveRecord::RecordNotFound do |exception|
    respond_to do |format|      
      format.json { head :not_found, content_type: 'text/html' }        
      format.html { redirect_to after_sign_in_path_for(current_user), alert: "Enregistrement non trouvé" }        
      format.js   { head :not_found, content_type: 'text/html' }        
    end
  end

  def after_sign_in_path_for(resource)
    waiting_lists_path
  end

  def current_ability
    @current_ability ||= Ability.new(current_user)
  end
end
