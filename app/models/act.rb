class Act < ActiveRecord::Base
  resourcify
  has_and_belongs_to_many :patients

  def to_label
    "#{self.name} (#{self.AMO})"
  end  

  def to_s
  	self.to_label
  end
end
