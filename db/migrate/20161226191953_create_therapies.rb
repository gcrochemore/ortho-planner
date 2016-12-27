class CreateTherapies < ActiveRecord::Migration
  def change
    create_table :therapies do |t|
      t.references :practitioner, index: true, foreign_key: true
      t.datetime :begin_date
      t.datetime :end_date
      t.references :patient, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
