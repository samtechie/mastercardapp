json.array!(@activities) do |activity|
  json.extract! activity, :id, :subject, :content, :user_id
  json.url activity_url(activity, format: :json)
end
