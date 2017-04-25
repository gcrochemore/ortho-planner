class AdminController < ApplicationController
  authorize_resource :class => false

  def show_db_view

  end

  def export_db 
    models = ActiveRecord::Base.descendants

    models = models.select do |model|
               (model.to_s != 'ActiveRecord::SchemaMigration') && \
                model.table_exists? && \
                model.exists?
             end

    export = ""
    models.each do |model| 
      export = export + SeedDump.dump(model, exclude: [])
    end

    send_data export, type: 'text', filename: 'ORTHO-PLANNER-export-db-' + DateTime.now.strftime("%Y%m%d%H%M%S") + '.txt'
  end
end
