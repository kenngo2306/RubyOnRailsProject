json.array!(@irrigation_responsibilities) do |irrigation_responsibility|
  json.extract! irrigation_responsibility, :id, :irrigation_responsibility_name
  json.url irrigation_responsibility_url(irrigation_responsibility, format: :json)
end
