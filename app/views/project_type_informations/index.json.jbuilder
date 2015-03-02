json.array!(@project_type_informations) do |project_type_information|
  json.extract! project_type_information, :id, :proposal_number, :revision_number, :project_id, :project_type_id
  json.url project_type_information_url(project_type_information, format: :json)
end
