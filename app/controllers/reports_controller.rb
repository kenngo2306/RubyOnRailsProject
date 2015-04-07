class ReportsController < ApplicationController

 def index
 end

 def monthly_clients
 end

 def monthly_projects
 end

 def client_params
  params.require(:client).permit(:client_id,:client_name, :created_at)
 end

 def project_params
  params.require(:project).permit(:project_id,:project_name,:created_at)
 end

end