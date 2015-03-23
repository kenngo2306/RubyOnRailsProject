json.array!(@category_option_selections) do |category_option_selection|
  json.extract! category_option_selection, :id, :category_option_id, :project_type_information_id
  json.url category_option_selection_url(category_option_selection, format: :json)
end
