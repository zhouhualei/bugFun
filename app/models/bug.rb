class Bug < ActiveRecord::Base

  #has_many :comment_relationships
  #has_many :comments, through: :comment_relationships
  has_many :comments

  has_many :follow_relationships
  has_many :followers, through: :follow_relationships

  has_many :bookmark_relationships
  has_many :bookmark_users, through: :bookmark_relationships, source: :user

  has_many :rating_relationships
  has_many :rated_bys, through: :rating_relationships, source: :user

  belongs_to :assignee, foreign_key: "assignee_id", class_name: "User"

  def ratings
    group_count_hash = rating_relationships.group(:score).count #{1=>1, 3=>1, 4=>2, 5=>1}
    rating_array = Array.new(5,0)
    group_count_hash.each do |k, v|
      rating_array[k-1] = v
    end
    rating_array
  end

  def score
    my_severity = severity[1..-1].to_i
    my_ratings = [0] + ratings
    my_ratingsRatio = [0, -3, -1, 0, 1, 3]
    my_followers = followers.length
    my_favorites = bookmark_users.length
    my_views = views
    my_followersThreshold = 5
    my_favoriteThreshold = 3
    my_viewsThreshold = 20
    my_rating = 0

    if (my_severity <= 2)
        my_rating = 4
    else
        my_rating = 3
    end

    delta = 0
    all = 0
    (1..5).each do |i|
        delta += my_ratings[i] * my_ratingsRatio[i];
        all += my_ratings[i]
    end

    my_rating += delta / all if all != 0
    my_rating += 0.5 if (my_followers > my_followersThreshold)
    my_rating += 0.5 if (my_favorites > my_favoriteThreshold)
    my_rating += 0.5 if (my_views > my_viewsThreshold)
    my_rating.round(1)
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
