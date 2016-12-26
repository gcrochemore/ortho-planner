class CreatePractitionerProfessions < ActiveRecord::Migration
  def change
    create_table :practitioner_professions do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
