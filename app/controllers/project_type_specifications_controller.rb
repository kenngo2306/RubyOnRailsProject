class ProjectTypeSpecificationsController < ApplicationController
  def new
    @project_types = ProjectType.all
  end

  def edit
  end
end
