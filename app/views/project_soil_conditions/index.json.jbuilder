json.array!(@project_soil_conditions) do |project_soil_condition|
  json.extract! project_soil_condition, :id, :soil_condition_id, :project_site_information_id
  json.url project_soil_condition_url(project_soil_condition, format: :json)
end
