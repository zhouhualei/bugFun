json.array!(@bugs) do |bug|
  json.extract! bug, :id, :title, :description, :severity, :submiter, :status, :views, :score, :assignee
  json.comment_count bug.comments.count
  json.created_at time_ago_in_words(bug.created_at)+" ago"
end

