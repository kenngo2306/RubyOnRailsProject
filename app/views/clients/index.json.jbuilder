json.array!(@clients) do |client|
  json.extract! client, :id, :client_name, :billing_address, :billing_city, :billing_zip, :state_id
  json.url client_url(client, format: :json)
end
