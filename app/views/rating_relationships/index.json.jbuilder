json.array!(@rating_relationships) do |rating_relationship|
  json.extract! rating_relationship, :bug_id, :user_id, :score
end
