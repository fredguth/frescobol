class Mix < ActiveRecord::Base
  attr_accessible :autor, :nome
  
  has_many :comments
end
