class Session < ActiveRecord::Base
  resourcify
  belongs_to :therapy
  belongs_to :act
  belongs_to :practitioner
  belongs_to :health_place

  default_scope { order(:begin_date) }
end
