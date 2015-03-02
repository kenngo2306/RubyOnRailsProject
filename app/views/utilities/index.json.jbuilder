json.array!(@utilities) do |utility|
  json.extract! utility, :id, :utility_name
  json.url utility_url(utility, format: :json)
end
