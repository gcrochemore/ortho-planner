class CreateWaitingLists < ActiveRecord::Migration
  def change
    create_table :waiting_lists do |t|
      t.belongs_to :patient, index: true, foreign_key: true
      t.references :health_place, index: true, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.references :pathology, index: true, foreign_key: true
      t.text :comments
      t.boolean :waiting_for_patient_return

      t.timestamps null: false
    end
  end
end
