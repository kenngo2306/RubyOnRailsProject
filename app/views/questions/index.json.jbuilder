json.array!(@questions) do |question|
  json.extract! question, :id, :question_name, :project_type_id
  json.url question_url(question, format: :json)
end
