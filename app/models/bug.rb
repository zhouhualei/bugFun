class Bug < ActiveRecord::Base

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
