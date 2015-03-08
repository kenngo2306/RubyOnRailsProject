json.array!(@installers) do |installer|
  json.extract! installer, :id, :installer_first_name, :installer_last_name, :installer_email, :installer_phone, :user_id
  json.url installer_url(installer, format: :json)
end
