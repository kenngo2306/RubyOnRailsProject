require 'test_helper'

class CategoryOptionSelectionsControllerTest < ActionController::TestCase
  setup do
    @category_option_selection = category_option_selections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_option_selections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_option_selection" do
    assert_difference('CategoryOptionSelection.count') do
      post :create, category_option_selection: { category_option_id: @category_option_selection.category_option_id, category_option_selection_name: @category_option_selection.category_option_selection_name, project_type_information_id: @category_option_selection.project_type_information_id }
    end

    assert_redirected_to category_option_selection_path(assigns(:category_option_selection))
  end

  test "should show category_option_selection" do
    get :show, id: @category_option_selection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category_option_selection
    assert_response :success
  end

  test "should update category_option_selection" do
    patch :update, id: @category_option_selection, category_option_selection: { category_option_id: @category_option_selection.category_option_id, category_option_selection_name: @category_option_selection.category_option_selection_name, project_type_information_id: @category_option_selection.project_type_information_id }
    assert_redirected_to category_option_selection_path(assigns(:category_option_selection))
  end

  test "should destroy category_option_selection" do
    assert_difference('CategoryOptionSelection.count', -1) do
      delete :destroy, id: @category_option_selection
    end

    assert_redirected_to category_option_selections_path
  end
end
