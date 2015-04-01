require 'test_helper'

class StatusCategoriesControllerTest < ActionController::TestCase
  setup do
    @status_category = status_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_category" do
    assert_difference('StatusCategory.count') do
      post :create, status_category: { status_category_name: @status_category.status_category_name }
    end

    assert_redirected_to status_category_path(assigns(:status_category))
  end

  test "should show status_category" do
    get :show, id: @status_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_category
    assert_response :success
  end

  test "should update status_category" do
    patch :update, id: @status_category, status_category: { status_category_name: @status_category.status_category_name }
    assert_redirected_to status_category_path(assigns(:status_category))
  end

  test "should destroy status_category" do
    assert_difference('StatusCategory.count', -1) do
      delete :destroy, id: @status_category
    end

    assert_redirected_to status_categories_path
  end
end
