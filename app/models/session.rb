class Session < ActiveRecord::Base
  belongs_to :therapy
  belongs_to :act
  belongs_to :practitioner
end
