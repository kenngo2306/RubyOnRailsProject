require 'test_helper'

class ProjectSiteInformationsControllerTest < ActionController::TestCase
  setup do
    @project_site_information = project_site_informations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_site_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_site_information" do
    assert_difference('ProjectSiteInformation.count') do
      post :create, project_site_information: { area_description: @project_site_information.area_description, area_is_sloped: @project_site_information.area_is_sloped, area_length: @project_site_information.area_length, area_width: @project_site_information.area_width, bobcat_accessible: @project_site_information.bobcat_accessible, client_fence_dismantle_reinstall_required: @project_site_information.client_fence_dismantle_reinstall_required, construction_fence_required: @project_site_information.construction_fence_required, dirt_haul_off_required: @project_site_information.dirt_haul_off_required, geotech_report_in_position: @project_site_information.geotech_report_in_position, hand_dig_required: @project_site_information.hand_dig_required, project_type_information_id: @project_site_information.project_type_information_id, pvt_locator_required: @project_site_information.pvt_locator_required, rock_excavation_required: @project_site_information.rock_excavation_required, site_survey_required: @project_site_information.site_survey_required, structural_removal_required: @project_site_information.structural_removal_required, surface_protection_required: @project_site_information.surface_protection_required, tree_vegetation_removal_required: @project_site_information.tree_vegetation_removal_required, under_ground_obstacles_yn: @project_site_information.under_ground_obstacles_yn }
    end

    assert_redirected_to project_site_information_path(assigns(:project_site_information))
  end

  test "should show project_site_information" do
    get :show, id: @project_site_information
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_site_information
    assert_response :success
  end

  test "should update project_site_information" do
    patch :update, id: @project_site_information, project_site_information: { area_description: @project_site_information.area_description, area_is_sloped: @project_site_information.area_is_sloped, area_length: @project_site_information.area_length, area_width: @project_site_information.area_width, bobcat_accessible: @project_site_information.bobcat_accessible, client_fence_dismantle_reinstall_required: @project_site_information.client_fence_dismantle_reinstall_required, construction_fence_required: @project_site_information.construction_fence_required, dirt_haul_off_required: @project_site_information.dirt_haul_off_required, geotech_report_in_position: @project_site_information.geotech_report_in_position, hand_dig_required: @project_site_information.hand_dig_required, project_type_information_id: @project_site_information.project_type_information_id, pvt_locator_required: @project_site_information.pvt_locator_required, rock_excavation_required: @project_site_information.rock_excavation_required, site_survey_required: @project_site_information.site_survey_required, structural_removal_required: @project_site_information.structural_removal_required, surface_protection_required: @project_site_information.surface_protection_required, tree_vegetation_removal_required: @project_site_information.tree_vegetation_removal_required, under_ground_obstacles_yn: @project_site_information.under_ground_obstacles_yn }
    assert_redirected_to project_site_information_path(assigns(:project_site_information))
  end

  test "should destroy project_site_information" do
    assert_difference('ProjectSiteInformation.count', -1) do
      delete :destroy, id: @project_site_information
    end

    assert_redirected_to project_site_informations_path
  end
end
