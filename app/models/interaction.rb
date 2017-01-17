class Interaction < ActiveRecord::Base
  resourcify
  belongs_to :patient
  belongs_to :practitioner
  belongs_to :interaction_object
  belongs_to :interaction_type

  default_scope { order(interaction_date: :desc) }
end
