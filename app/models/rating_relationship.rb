class RatingRelationship < ActiveRecord::Base

  belongs_to :user
  belongs_to :bug

end
