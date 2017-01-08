class CreatePatientsActs < ActiveRecord::Migration
  def change
    create_table :patients_acts do |t|
      t.references :patient, index: true, foreign_key: true
      t.references :act, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
