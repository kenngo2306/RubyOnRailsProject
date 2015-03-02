require 'test_helper'

class IrrigationResponsibilitiesControllerTest < ActionController::TestCase
  setup do
    @irrigation_responsibility = irrigation_responsibilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:irrigation_responsibilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create irrigation_responsibility" do
    assert_difference('IrrigationResponsibility.count') do
      post :create, irrigation_responsibility: { irrigation_responsibility_name: @irrigation_responsibility.irrigation_responsibility_name }
    end

    assert_redirected_to irrigation_responsibility_path(assigns(:irrigation_responsibility))
  end

  test "should show irrigation_responsibility" do
    get :show, id: @irrigation_responsibility
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @irrigation_responsibility
    assert_response :success
  end

  test "should update irrigation_responsibility" do
    patch :update, id: @irrigation_responsibility, irrigation_responsibility: { irrigation_responsibility_name: @irrigation_responsibility.irrigation_responsibility_name }
    assert_redirected_to irrigation_responsibility_path(assigns(:irrigation_responsibility))
  end

  test "should destroy irrigation_responsibility" do
    assert_difference('IrrigationResponsibility.count', -1) do
      delete :destroy, id: @irrigation_responsibility
    end

    assert_redirected_to irrigation_responsibilities_path
  end
end
