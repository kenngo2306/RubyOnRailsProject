json.array!(@category_options) do |category_option|
  json.extract! category_option, :id, :category_option_name, :category_id
  json.url category_option_url(category_option, format: :json)
end
