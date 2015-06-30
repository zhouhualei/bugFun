json.extract! @bug, :id, :title, :description, :severity, :submiter, :views, :score, :comments
json.created_at time_ago_in_words(@bug.created_at)+" ago"

