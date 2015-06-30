  json.extract! @follow_relationship, :bug_id
  json.user_id @follow_relationship.follower_id
