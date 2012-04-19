class Track < ActiveRecord::Base
  attr_accessible :bpm, :duration, :instrument, :original_track_id, :owner, :stream_url
  
  validates :owner, :stream_url, :presence => true
  
  has_and_belongs_to_many :mixes
end
