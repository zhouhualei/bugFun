class Comment < ActiveRecord::Base

  has_one :comment_relationship
  has_one :bug, through: :comment_relationship

  belongs_to :author, foreign_key: "author_id", class_name: "User"

end
