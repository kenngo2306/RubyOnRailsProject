json.array!(@project_settings) do |project_setting|
  json.extract! project_setting, :id, :project_setting_name
  json.url project_setting_url(project_setting, format: :json)
end
