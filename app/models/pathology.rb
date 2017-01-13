class Pathology < ActiveRecord::Base
  resourcify
  has_and_belongs_to_many :patients

  default_scope { order(:name) }
end
