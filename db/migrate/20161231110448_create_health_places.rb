class CreateHealthPlaces < ActiveRecord::Migration
  def change
    create_table :health_places do |t|
      t.string :name
      t.references :HealthPlaceType, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
