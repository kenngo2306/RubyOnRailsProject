require 'test_helper'

class ProjectTypeInformationsControllerTest < ActionController::TestCase
  setup do
    @project_type_information = project_type_informations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_type_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_type_information" do
    assert_difference('ProjectTypeInformation.count') do
      post :create, project_type_information: { project_id: @project_type_information.project_id, project_type_id: @project_type_information.project_type_id, proposal_number: @project_type_information.proposal_number, revision_number: @project_type_information.revision_number }
    end

    assert_redirected_to project_type_information_path(assigns(:project_type_information))
  end

  test "should show project_type_information" do
    get :show, id: @project_type_information
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_type_information
    assert_response :success
  end

  test "should update project_type_information" do
    patch :update, id: @project_type_information, project_type_information: { project_id: @project_type_information.project_id, project_type_id: @project_type_information.project_type_id, proposal_number: @project_type_information.proposal_number, revision_number: @project_type_information.revision_number }
    assert_redirected_to project_type_information_path(assigns(:project_type_information))
  end

  test "should destroy project_type_information" do
    assert_difference('ProjectTypeInformation.count', -1) do
      delete :destroy, id: @project_type_information
    end

    assert_redirected_to project_type_informations_path
  end
end
