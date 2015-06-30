json.array!(@bugs) do |bug|
  json.extract! bug, :id, :title, :description, :severity, :submiter, :views, :rating
  json.url bug_url(bug, format: :json)
end
