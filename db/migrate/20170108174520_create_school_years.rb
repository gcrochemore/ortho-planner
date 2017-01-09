class CreateSchoolYears < ActiveRecord::Migration
  def change
    create_table :school_years do |t|
      t.date :begin_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
