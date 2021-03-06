class CreatePractitioners < ActiveRecord::Migration
  def change
    create_table :practitioners do |t|
      t.string :first_name
      t.string :last_name
      t.date :birth_date
      t.string :birth_place
      t.references :practitioner_profession, index: true, foreign_key: true
      t.references :health_place, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end