json.array!(@bugs) do |bug|
  json.extract! bug, :id, :id, :title, :detail, :severity, :submiter, :votes, :score
  json.url bug_url(bug, format: :json)
end
