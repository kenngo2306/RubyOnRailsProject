class ProjectTypeSpecificationsController < ApplicationController
  def new
    @project_type_information = ProjectTypeInformation.find(params[:project_type_information_id])
    @project_type = ProjectType.find(@project_type_information.project_type_id)

  end

  def edit
  end
end
