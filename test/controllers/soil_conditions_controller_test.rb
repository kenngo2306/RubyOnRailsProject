require 'test_helper'

class SoilConditionsControllerTest < ActionController::TestCase
  setup do
    @soil_condition = soil_conditions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:soil_conditions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create soil_condition" do
    assert_difference('SoilCondition.count') do
      post :create, soil_condition: { soil_condition_name: @soil_condition.soil_condition_name }
    end

    assert_redirected_to soil_condition_path(assigns(:soil_condition))
  end

  test "should show soil_condition" do
    get :show, id: @soil_condition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @soil_condition
    assert_response :success
  end

  test "should update soil_condition" do
    patch :update, id: @soil_condition, soil_condition: { soil_condition_name: @soil_condition.soil_condition_name }
    assert_redirected_to soil_condition_path(assigns(:soil_condition))
  end

  test "should destroy soil_condition" do
    assert_difference('SoilCondition.count', -1) do
      delete :destroy, id: @soil_condition
    end

    assert_redirected_to soil_conditions_path
  end
end
