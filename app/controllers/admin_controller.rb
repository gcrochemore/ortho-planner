class AdminController < ApplicationController
  authorize_resource :class => false

  def export_db_view 

  end
end
