class AddAvailableToPatientAvailabilities < ActiveRecord::Migration
  def change
    add_column :patient_availabilities, :available, :boolean
  end
end
