json.extract! @comment, :id, :content, :author_id
json.author_name @comment.author.name
json.author_img_url "http://wwwin.cisco.com/dir/photo/std/#{@comment.author.uid}.jpg"
json.created_at time_ago_in_words(@comment.created_at)+" ago"
