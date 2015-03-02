json.array!(@project_utilities) do |project_utility|
  json.extract! project_utility, :id, :utility_id, :project_site_information_id
  json.url project_utility_url(project_utility, format: :json)
end
