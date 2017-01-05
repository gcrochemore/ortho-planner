class CreateAbsences < ActiveRecord::Migration
  def change
    create_table :absences do |t|
      t.references :patient, index: true, foreign_key: true
      t.datetime :begin_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end
