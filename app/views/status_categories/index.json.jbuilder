json.array!(@status_categories) do |status_category|
  json.extract! status_category, :id, :status_category_name
  json.url status_category_url(status_category, format: :json)
end
