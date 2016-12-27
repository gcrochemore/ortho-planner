class CreatePathologies < ActiveRecord::Migration
  def change
    create_table :pathologies do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
