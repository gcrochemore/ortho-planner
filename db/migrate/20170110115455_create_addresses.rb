class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :name
      t.integer :street_number
      t.string :street_name
      t.string :postal_code
      t.string :city
      t.float :latitude
      t.float :longitude
      t.references :addressable, polymorphic: true, index: true
      t.references :address_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
