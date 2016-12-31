class CreateHealthPlaceTypes < ActiveRecord::Migration
  def change
    create_table :health_place_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
