json.array!(@category_types) do |category_type|
  json.extract! category_type, :id, :category_type_name
  json.url category_type_url(category_type, format: :json)
end
