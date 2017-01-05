class CreateTherapies < ActiveRecord::Migration
  def change
    create_table :therapies do |t|
      t.references :practitioner, index: true, foreign_key: true
      t.datetime :begin_date
      t.datetime :end_date
      t.references :patient, index: true, foreign_key: true
      t.references :health_place, index: true, foreign_key: true
      t.integer :number_of_sessions
      t.integer :session_duration

      t.timestamps null: false
    end
  end
end
