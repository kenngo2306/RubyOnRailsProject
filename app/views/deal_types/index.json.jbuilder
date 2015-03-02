json.array!(@deal_types) do |deal_type|
  json.extract! deal_type, :id, :deal_type_name
  json.url deal_type_url(deal_type, format: :json)
end
