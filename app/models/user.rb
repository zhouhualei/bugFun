class User < ActiveRecord::Base

  has_many :bugs_assigned_to_me, foreign_key: "assignee_id", class_name: "Bug"

  has_many :follow_relationships, foreign_key: "follower_id", source: :bug
  has_many :followings, through: :follow_relationships, source: :bug

  has_many :bookmark_relationships, foreign_key: "user_id", source: :bug
  has_many :bookmarkings, through: :bookmark_relationships, source: :bug

  has_many :rating_relationships, foreign_key: "user_id", source: :bug
  has_many :ratings, through: :rating_relationships, source: :bug
  
  

end
