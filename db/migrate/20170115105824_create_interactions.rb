class CreateInteractions < ActiveRecord::Migration
  def change
    create_table :interactions do |t|
      t.references :patient, index: true, foreign_key: true
      t.references :practitioner, index: true, foreign_key: true
      t.references :interaction_object, index: true, foreign_key: true
      t.references :interaction_type, index: true, foreign_key: true
      t.datetime :interaction_date
      t.text :comments

      t.timestamps null: false
    end
  end
end
