require 'test_helper'

class ProjectRequestedSalesDocumentsControllerTest < ActionController::TestCase
  setup do
    @project_requested_sales_document = project_requested_sales_documents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_requested_sales_documents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_requested_sales_document" do
    assert_difference('ProjectRequestedSalesDocument.count') do
      post :create, project_requested_sales_document: { project_id: @project_requested_sales_document.project_id, requested_sales_document_id: @project_requested_sales_document.requested_sales_document_id }
    end

    assert_redirected_to project_requested_sales_document_path(assigns(:project_requested_sales_document))
  end

  test "should show project_requested_sales_document" do
    get :show, id: @project_requested_sales_document
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_requested_sales_document
    assert_response :success
  end

  test "should update project_requested_sales_document" do
    patch :update, id: @project_requested_sales_document, project_requested_sales_document: { project_id: @project_requested_sales_document.project_id, requested_sales_document_id: @project_requested_sales_document.requested_sales_document_id }
    assert_redirected_to project_requested_sales_document_path(assigns(:project_requested_sales_document))
  end

  test "should destroy project_requested_sales_document" do
    assert_difference('ProjectRequestedSalesDocument.count', -1) do
      delete :destroy, id: @project_requested_sales_document
    end

    assert_redirected_to project_requested_sales_documents_path
  end
end
