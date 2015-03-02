require 'test_helper'

class ProcurementToolsControllerTest < ActionController::TestCase
  setup do
    @procurement_tool = procurement_tools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:procurement_tools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create procurement_tool" do
    assert_difference('ProcurementTool.count') do
      post :create, procurement_tool: { procurement_tool_name: @procurement_tool.procurement_tool_name }
    end

    assert_redirected_to procurement_tool_path(assigns(:procurement_tool))
  end

  test "should show procurement_tool" do
    get :show, id: @procurement_tool
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @procurement_tool
    assert_response :success
  end

  test "should update procurement_tool" do
    patch :update, id: @procurement_tool, procurement_tool: { procurement_tool_name: @procurement_tool.procurement_tool_name }
    assert_redirected_to procurement_tool_path(assigns(:procurement_tool))
  end

  test "should destroy procurement_tool" do
    assert_difference('ProcurementTool.count', -1) do
      delete :destroy, id: @procurement_tool
    end

    assert_redirected_to procurement_tools_path
  end
end
