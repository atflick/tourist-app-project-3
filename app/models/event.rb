class Event < ActiveRecord::Base
  belongs_to :location
  has_many :photos
end
