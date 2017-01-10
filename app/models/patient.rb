class Patient < ActiveRecord::Base
  has_paper_trail
  resourcify

  validates :first_name, :last_name, :phone_number, presence: true
  has_and_belongs_to_many :acts, join_table: "patients_acts"
  has_and_belongs_to_many :pathologies, join_table: "patients_pathologies"
  has_many :interactions
  accepts_nested_attributes_for :interactions, allow_destroy: true
  has_many :therapies
  accepts_nested_attributes_for :therapies, allow_destroy: true
  has_many :addresses, as: :addressable
  accepts_nested_attributes_for :addresses, allow_destroy: true
  has_many :schoolings
  accepts_nested_attributes_for :schoolings, allow_destroy: true

  def gender
    self.is_male ? "Male" : "Female"
  end

  def age
    if self.birth_date
      now = Time.now.utc.to_date
      now.year - self.birth_date.year - (self.birth_date.to_date.change(year: now.year) > now ? 1 : 0)
    end
  end

  def to_label
    "#{self.first_name} #{self.last_name}"
  end  

  def to_s
  	self.to_label
  end	
end
