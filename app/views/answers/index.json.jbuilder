json.array!(@answers) do |answer|
  json.extract! answer, :id, :answer_text, :question_id, :project_type_information_id
  json.url answer_url(answer, format: :json)
end
