json.array!(@states) do |state|
  json.extract! state, :id, :state_name, :state_abbreviation
  json.url state_url(state, format: :json)
end
