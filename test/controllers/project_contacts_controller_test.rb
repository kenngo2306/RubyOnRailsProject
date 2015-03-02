require 'test_helper'

class ProjectContactsControllerTest < ActionController::TestCase
  setup do
    @project_contact = project_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_contact" do
    assert_difference('ProjectContact.count') do
      post :create, project_contact: { contact_id: @project_contact.contact_id, project_id: @project_contact.project_id }
    end

    assert_redirected_to project_contact_path(assigns(:project_contact))
  end

  test "should show project_contact" do
    get :show, id: @project_contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_contact
    assert_response :success
  end

  test "should update project_contact" do
    patch :update, id: @project_contact, project_contact: { contact_id: @project_contact.contact_id, project_id: @project_contact.project_id }
    assert_redirected_to project_contact_path(assigns(:project_contact))
  end

  test "should destroy project_contact" do
    assert_difference('ProjectContact.count', -1) do
      delete :destroy, id: @project_contact
    end

    assert_redirected_to project_contacts_path
  end
end
