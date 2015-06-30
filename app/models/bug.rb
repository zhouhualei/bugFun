class Bug < ActiveRecord::Base

  has_many :comment_relationships
  has_many :comments, through: :comment_relationships

  has_many :follow_relationships
  has_many :followers, through: :follow_relationships

  has_many :bookmark_relationships
  has_many :bookmark_users, through: :bookmark_relationships, source: :user

  has_many :rating_relationships
  has_many :rated_bys, through: :rating_relationships, source: :user


  belongs_to :assignee, foreign_key: "assignee_id", class_name: "User"

  def score
    # TODO
    rand(5)
  end

  scope :fixed, -> { where(status: "Fixed") }
  scope :new_status, -> { where(status: "New") }
  scope :assigned, -> { where(status: "Assigned") }
  scope :bugs_submited_by, ->(submiter) { where(submiter: submiter) }
  scope :bugs_fixed_by, ->(assignee) { where(assignee: assignee, status: "Fixed") }

  def self.bugs_followed_by
    self.all.sample(5)
  end

  def self.bugs_favorite_by
    self.fixed.sample(5)
  end
end
