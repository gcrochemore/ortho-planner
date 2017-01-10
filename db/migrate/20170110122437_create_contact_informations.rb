class CreateContactInformations < ActiveRecord::Migration
  def change
    create_table :contact_informations do |t|
      t.references :contactable, polymorphic: true, index: {name: "index_contact_information_on_contactable"}
      t.references :contact_information_type, foreign_key: true
      t.string :value

      t.timestamps null: false
    end
  end
end
