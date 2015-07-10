json.array!(@reviews) do |review|
  json.extract! review, :id, :course_id, :body, :user_id
  json.url review_url(review, format: :json)
end
