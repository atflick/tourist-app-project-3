class Events < ActiveRecord::Base
    belongs_to :location
    has_many :photos
  end
