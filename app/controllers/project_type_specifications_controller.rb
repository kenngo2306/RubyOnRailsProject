class ProjectTypeSpecificationsController < ApplicationController
  def new
    @project_type_information = ProjectTypeInformation.find(params[:project_type_information_id])
    @project_type = ProjectType.find(@project_type_information.project_type_id)
    @category_option_selection = CategoryOptionSelection.new
    @option_array = []
    @answer_array = []
    @answer = Answer.new
  end

  def edit
  end

  def save

  end
end
