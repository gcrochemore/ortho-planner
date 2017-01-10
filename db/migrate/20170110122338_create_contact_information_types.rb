class CreateContactInformationTypes < ActiveRecord::Migration
  def change
    create_table :contact_information_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
