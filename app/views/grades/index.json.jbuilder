json.array!(@grades) do |grade|
  json.extract! grade, :id, :course, :grade, :user_id
  json.url grade_url(grade, format: :json)
end
