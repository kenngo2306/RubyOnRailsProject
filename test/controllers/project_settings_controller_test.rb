require 'test_helper'

class ProjectSettingsControllerTest < ActionController::TestCase
  setup do
    @project_setting = project_settings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_settings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_setting" do
    assert_difference('ProjectSetting.count') do
      post :create, project_setting: { project_setting_name: @project_setting.project_setting_name }
    end

    assert_redirected_to project_setting_path(assigns(:project_setting))
  end

  test "should show project_setting" do
    get :show, id: @project_setting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_setting
    assert_response :success
  end

  test "should update project_setting" do
    patch :update, id: @project_setting, project_setting: { project_setting_name: @project_setting.project_setting_name }
    assert_redirected_to project_setting_path(assigns(:project_setting))
  end

  test "should destroy project_setting" do
    assert_difference('ProjectSetting.count', -1) do
      delete :destroy, id: @project_setting
    end

    assert_redirected_to project_settings_path
  end
end
