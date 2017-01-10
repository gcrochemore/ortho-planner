class CreatePatientsPathologies < ActiveRecord::Migration
  def change
    create_table :patients_pathologies do |t|
      t.references :patient, index: true, foreign_key: true
      t.references :pathology, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
