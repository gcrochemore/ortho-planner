class Patient < ActiveRecord::Base
  has_paper_trail
  resourcify

  has_and_belongs_to_many :acts, join_table: "patients_acts"
  validates :first_name, :last_name, :phone_number, presence: true

  def to_label
    "#{self.first_name} #{self.last_name}"
  end  

  def to_s
  	self.to_label
  end	
end
