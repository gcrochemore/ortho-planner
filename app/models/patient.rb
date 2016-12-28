class Patient < ActiveRecord::Base
  has_paper_trail
  resourcify
end
