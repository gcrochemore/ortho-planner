class Address < ActiveRecord::Base
  validates :city, presence: true

  belongs_to :addressable, polymorphic: true
  belongs_to :address_type
end
