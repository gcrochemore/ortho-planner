class Interaction < ActiveRecord::Base
  resourcify
  belongs_to :patient
  belongs_to :interaction_type
end
