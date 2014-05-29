json.array!(@posts) do |post|
  json.extract! post, :id, :title, :content, :raw_content
  json.url post_url(post, format: :json)
end
