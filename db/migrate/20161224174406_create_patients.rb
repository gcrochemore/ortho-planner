class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :last_name
      t.string :first_name
      t.boolean :is_male
      t.date :birth_date
      t.string :birth_place
      t.boolean :priority
      t.text :comments
      t.string :job

      t.timestamps null: false
    end
  end
end
