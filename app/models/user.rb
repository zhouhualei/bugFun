class User < ActiveRecord::Base

  has_many :bugs_assigned_to_me, foreign_key: "assignee_id", class_name: "Bug"

end
