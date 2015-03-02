require 'test_helper'

class ProjectSitesControllerTest < ActionController::TestCase
  setup do
    @project_site = project_sites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_sites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_site" do
    assert_difference('ProjectSite.count') do
      post :create, project_site: { site_access: @project_site.site_access, site_address: @project_site.site_address, site_city: @project_site.site_city, site_name: @project_site.site_name, site_zip: @project_site.site_zip, state_id: @project_site.state_id }
    end

    assert_redirected_to project_site_path(assigns(:project_site))
  end

  test "should show project_site" do
    get :show, id: @project_site
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_site
    assert_response :success
  end

  test "should update project_site" do
    patch :update, id: @project_site, project_site: { site_access: @project_site.site_access, site_address: @project_site.site_address, site_city: @project_site.site_city, site_name: @project_site.site_name, site_zip: @project_site.site_zip, state_id: @project_site.state_id }
    assert_redirected_to project_site_path(assigns(:project_site))
  end

  test "should destroy project_site" do
    assert_difference('ProjectSite.count', -1) do
      delete :destroy, id: @project_site
    end

    assert_redirected_to project_sites_path
  end
end
