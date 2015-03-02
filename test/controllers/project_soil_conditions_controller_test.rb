require 'test_helper'

class ProjectSoilConditionsControllerTest < ActionController::TestCase
  setup do
    @project_soil_condition = project_soil_conditions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_soil_conditions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_soil_condition" do
    assert_difference('ProjectSoilCondition.count') do
      post :create, project_soil_condition: { project_site_information_id: @project_soil_condition.project_site_information_id, soil_condition_id: @project_soil_condition.soil_condition_id }
    end

    assert_redirected_to project_soil_condition_path(assigns(:project_soil_condition))
  end

  test "should show project_soil_condition" do
    get :show, id: @project_soil_condition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_soil_condition
    assert_response :success
  end

  test "should update project_soil_condition" do
    patch :update, id: @project_soil_condition, project_soil_condition: { project_site_information_id: @project_soil_condition.project_site_information_id, soil_condition_id: @project_soil_condition.soil_condition_id }
    assert_redirected_to project_soil_condition_path(assigns(:project_soil_condition))
  end

  test "should destroy project_soil_condition" do
    assert_difference('ProjectSoilCondition.count', -1) do
      delete :destroy, id: @project_soil_condition
    end

    assert_redirected_to project_soil_conditions_path
  end
end
