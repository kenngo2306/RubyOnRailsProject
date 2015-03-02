require 'test_helper'

class ProjectUtilitiesControllerTest < ActionController::TestCase
  setup do
    @project_utility = project_utilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_utilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_utility" do
    assert_difference('ProjectUtility.count') do
      post :create, project_utility: { project_site_information_id: @project_utility.project_site_information_id, utility_id: @project_utility.utility_id }
    end

    assert_redirected_to project_utility_path(assigns(:project_utility))
  end

  test "should show project_utility" do
    get :show, id: @project_utility
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_utility
    assert_response :success
  end

  test "should update project_utility" do
    patch :update, id: @project_utility, project_utility: { project_site_information_id: @project_utility.project_site_information_id, utility_id: @project_utility.utility_id }
    assert_redirected_to project_utility_path(assigns(:project_utility))
  end

  test "should destroy project_utility" do
    assert_difference('ProjectUtility.count', -1) do
      delete :destroy, id: @project_utility
    end

    assert_redirected_to project_utilities_path
  end
end
