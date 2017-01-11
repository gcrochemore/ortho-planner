class CreatePatientAvailabilities < ActiveRecord::Migration
  def change
    create_table :patient_availabilities do |t|
      t.references :patient, index: true, foreign_key: true
      t.integer :day
      t.integer :period

      t.timestamps null: false
    end
  end
end
