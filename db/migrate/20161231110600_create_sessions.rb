class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.datetime :begin_date
      t.datetime :end_date
      t.references :therapy, index: true, foreign_key: true
      t.references :patient, index: true, foreign_key: true
      t.references :act, index: true, foreign_key: true
      t.references :practitioner, index: true, foreign_key: true
      t.references :health_place, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end