json.array!(@bugs) do |bug|
  json.extract! bug, :id, :title, :description, :severity, :submiter, :views, :score, :assignee
  json.created_at time_ago_in_words(bug.created_at)+" ago"
  json.url bug_url(bug, format: :json)
end
