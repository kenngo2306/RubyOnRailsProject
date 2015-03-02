json.array!(@project_contacts) do |project_contact|
  json.extract! project_contact, :id, :project_id, :contact_id
  json.url project_contact_url(project_contact, format: :json)
end
