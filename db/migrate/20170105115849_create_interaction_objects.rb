class CreateInteractionObjects < ActiveRecord::Migration
  def change
    create_table :interaction_objects do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
