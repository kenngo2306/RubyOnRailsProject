require 'test_helper'

class CategoryOptionsControllerTest < ActionController::TestCase
  setup do
    @category_option = category_options(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_options)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_option" do
    assert_difference('CategoryOption.count') do
      post :create, category_option: { category_id: @category_option.category_id, category_option_name: @category_option.category_option_name }
    end

    assert_redirected_to category_option_path(assigns(:category_option))
  end

  test "should show category_option" do
    get :show, id: @category_option
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category_option
    assert_response :success
  end

  test "should update category_option" do
    patch :update, id: @category_option, category_option: { category_id: @category_option.category_id, category_option_name: @category_option.category_option_name }
    assert_redirected_to category_option_path(assigns(:category_option))
  end

  test "should destroy category_option" do
    assert_difference('CategoryOption.count', -1) do
      delete :destroy, id: @category_option
    end

    assert_redirected_to category_options_path
  end
end
