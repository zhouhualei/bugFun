json.array!(@bookmark_relationships) do |bookmark_relationship|
  json.extract! bookmark_relationship, :bug_id, :user_id
end
