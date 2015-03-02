json.array!(@contacts) do |contact|
  json.extract! contact, :id, :contact_first_name, :contact_last_name, :contact_email, :contact_cell, :contact_work, :client_id, :contact_type_id
  json.url contact_url(contact, format: :json)
end
