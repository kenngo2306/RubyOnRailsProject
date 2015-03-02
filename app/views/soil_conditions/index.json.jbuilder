json.array!(@soil_conditions) do |soil_condition|
  json.extract! soil_condition, :id, :soil_condition_name
  json.url soil_condition_url(soil_condition, format: :json)
end
