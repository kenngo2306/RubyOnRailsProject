json.array!(@sales_people) do |sales_person|
  json.extract! sales_person, :id, :sales_person_first_name, :sales_person_last_name, :sales_person_email, :sales_person_phone
  json.url sales_person_url(sales_person, format: :json)
end
