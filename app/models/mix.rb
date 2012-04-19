class Mix < ActiveRecord::Base
  attr_accessible :owner
  
  has_many :tracks
end
