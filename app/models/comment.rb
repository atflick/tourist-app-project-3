class Comment < ActiveRecord::Base
  belongs_to :events, optional: true
end
