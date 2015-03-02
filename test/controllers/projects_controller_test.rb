require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { client_goal: @project.client_goal, deadline: @project.deadline, deal_type_description: @project.deal_type_description, deal_type_id: @project.deal_type_id, irrigation_responsibility_id: @project.irrigation_responsibility_id, liquidate_damages_yn: @project.liquidate_damages_yn, mobilization_quantity: @project.mobilization_quantity, permit_fees: @project.permit_fees, permit_fees_required: @project.permit_fees_required, permit_special_inspection_in_possession: @project.permit_special_inspection_in_possession, permit_submittal_required: @project.permit_submittal_required, prevailing_wages_certified_payroll_yn: @project.prevailing_wages_certified_payroll_yn, procurement_tool_id: @project.procurement_tool_id, project_budget: @project.project_budget, project_name: @project.project_name, project_setting_id: @project.project_setting_id, project_status_id: @project.project_status_id, restricted_work_hours: @project.restricted_work_hours, sales_person_id: @project.sales_person_id, start_date: @project.start_date, time_frame_description: @project.time_frame_description }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: { client_goal: @project.client_goal, deadline: @project.deadline, deal_type_description: @project.deal_type_description, deal_type_id: @project.deal_type_id, irrigation_responsibility_id: @project.irrigation_responsibility_id, liquidate_damages_yn: @project.liquidate_damages_yn, mobilization_quantity: @project.mobilization_quantity, permit_fees: @project.permit_fees, permit_fees_required: @project.permit_fees_required, permit_special_inspection_in_possession: @project.permit_special_inspection_in_possession, permit_submittal_required: @project.permit_submittal_required, prevailing_wages_certified_payroll_yn: @project.prevailing_wages_certified_payroll_yn, procurement_tool_id: @project.procurement_tool_id, project_budget: @project.project_budget, project_name: @project.project_name, project_setting_id: @project.project_setting_id, project_status_id: @project.project_status_id, restricted_work_hours: @project.restricted_work_hours, sales_person_id: @project.sales_person_id, start_date: @project.start_date, time_frame_description: @project.time_frame_description }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
