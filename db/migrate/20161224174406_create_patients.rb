class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :last_name
      t.string :first_name
      t.date :birth_date
      t.string :birth_place
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
