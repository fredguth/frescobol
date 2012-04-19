class Track < ActiveRecord::Base
  belongs_to :mix
  attr_accessible :url
end
