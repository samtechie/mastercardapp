json.array!(@updates) do |update|
  json.extract! update, :id, :content, :user_id
  json.url update_url(update, format: :json)
end
