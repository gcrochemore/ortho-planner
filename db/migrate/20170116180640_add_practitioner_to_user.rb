class AddPractitionerToUser < ActiveRecord::Migration
  def change
    add_reference :users, :practitioner, index: true, foreign_key: true, null: true
  end
end
