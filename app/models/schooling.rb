class Schooling < ActiveRecord::Base
  belongs_to :patient
  belongs_to :school
  belongs_to :school_level
  belongs_to :school_year

  default_scope { includes(:school_year).order('school_years.begin_date DESC') }
end
