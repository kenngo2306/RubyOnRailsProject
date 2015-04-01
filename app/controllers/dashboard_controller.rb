class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def index
    @project_statuses = ProjectStatus.all
    @status_categories = StatusCategory.all
  end

end