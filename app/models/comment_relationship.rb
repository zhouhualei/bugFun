class CommentRelationship < ActiveRecord::Base

  belongs_to :comment
  belongs_to :bug

end
