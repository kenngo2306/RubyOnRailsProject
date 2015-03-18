class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def index
    @project_statuses = ProjectStatus.all
  end

end