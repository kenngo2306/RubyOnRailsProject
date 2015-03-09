require 'test_helper'

class TestsControllerTest < ActionController::TestCase
  setup do
    @test = tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dashboard" do
    assert_difference('Test.count') do
      post :create, dashboard: { name: @test.name }
    end

    assert_redirected_to test_path(assigns(:dashboard))
  end

  test "should show dashboard" do
    get :show, id: @test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test
    assert_response :success
  end

  test "should update dashboard" do
    patch :update, id: @test, dashboard: { name: @test.name }
    assert_redirected_to test_path(assigns(:dashboard))
  end

  test "should destroy dashboard" do
    assert_difference('Test.count', -1) do
      delete :destroy, id: @test
    end

    assert_redirected_to tests_path
  end
end
