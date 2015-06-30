json.extract! @bug, :id, :title, :description, :severity, :submiter, :views, :score, :ratings
json.followers_count @bug.followers.count
json.bookmarkusers_count @bug.bookmark_users.count
json.comments @bug.comments do |comment|
  json.(comment, :id, :content, :author_id)
  json.author_name comment.author.name
  json.author_img_url "http://wwwin.cisco.com/dir/photo/std/#{comment.author.uid}.jpg"
  json.created_at time_ago_in_words(comment.created_at)+" ago"
end
json.created_at time_ago_in_words(@bug.created_at)+" ago"

