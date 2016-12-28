class Session < ActiveRecord::Base
  resourcify
  belongs_to :therapy
  belongs_to :act
  belongs_to :practitioner
end
