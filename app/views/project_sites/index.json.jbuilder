json.array!(@project_sites) do |project_site|
  json.extract! project_site, :id, :site_name, :site_address, :site_city, :site_zip, :site_access, :state_id
  json.url project_site_url(project_site, format: :json)
end
