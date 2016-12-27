class CreateActs < ActiveRecord::Migration
  def change
    create_table :acts do |t|
      t.string :name
      t.integer :AMO

      t.timestamps null: false
    end
  end
end
