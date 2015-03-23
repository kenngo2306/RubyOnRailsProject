json.array!(@project_site_informations) do |project_site_information|
  json.extract! project_site_information, :id, :area_length, :area_width, :area_description, :geotech_report_in_possession, :bobcat_accessible, :construction_fence_required, :client_fence_dismantle_reinstall_required, :rock_excavation_required, :hand_dig_required, :dirt_haul_off_required, :tree_vegetation_removal_required, :area_is_sloped, :site_survey_required, :surface_protection_required, :under_ground_obstacles_yn, :structural_removal_required, :pvt_locator_required, :project_id, :project_site_id
  json.url project_site_information_url(project_site_information, format: :json)
end
