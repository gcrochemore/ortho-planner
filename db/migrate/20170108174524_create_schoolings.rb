class CreateSchoolings < ActiveRecord::Migration
  def change
    create_table :schoolings do |t|
      t.references :patient, index: true, foreign_key: true
      t.references :school, index: true, foreign_key: true
      t.references :school_level, index: true, foreign_key: true
      t.references :school_year, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
