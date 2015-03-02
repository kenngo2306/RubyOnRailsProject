require 'test_helper'

class RequestedSalesDocumentsControllerTest < ActionController::TestCase
  setup do
    @requested_sales_document = requested_sales_documents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requested_sales_documents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create requested_sales_document" do
    assert_difference('RequestedSalesDocument.count') do
      post :create, requested_sales_document: { requested_sales_document_name: @requested_sales_document.requested_sales_document_name }
    end

    assert_redirected_to requested_sales_document_path(assigns(:requested_sales_document))
  end

  test "should show requested_sales_document" do
    get :show, id: @requested_sales_document
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @requested_sales_document
    assert_response :success
  end

  test "should update requested_sales_document" do
    patch :update, id: @requested_sales_document, requested_sales_document: { requested_sales_document_name: @requested_sales_document.requested_sales_document_name }
    assert_redirected_to requested_sales_document_path(assigns(:requested_sales_document))
  end

  test "should destroy requested_sales_document" do
    assert_difference('RequestedSalesDocument.count', -1) do
      delete :destroy, id: @requested_sales_document
    end

    assert_redirected_to requested_sales_documents_path
  end
end
