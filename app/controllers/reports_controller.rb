class ReportsController < ApplicationController

 def index

 end

 def monthly_clients
  respond_to do |format|
   format.html
   format.pdf do
    pdf = MonthlyClients.new(view_context)
    send_data pdf.render, filename: "Monthly Clients.pdf", type: "application/pdf", disposition: "inline"
   end
  end
 end

 def in_progress_projects
    @projects = Project.joins('INNER JOIN project_statuses ON project_statuses.id = projects.project_status_id').where('project_statuses.status_category_id=2')
 end

 def monthly_projects
   @projects = Project.where(start_date: (DateTime.current.midnight - 30.day)..Date.current.midnight)
 end

 def client_params
  params.require(:client).permit(:client_id,:client_name, :created_at)
 end

 def project_params
  params.require(:project).permit(:project_id,:project_name,:created_at)
 end

 def preproposal_projects
   @projects = Project.joins('INNER JOIN project_statuses ON project_statuses.id = projects.project_status_id').where('project_statuses.status_category_id=1')
 end

 def completed_projects
   @projects = Project.where(project_status: 16)
 end

 def count_of_project_type
   @project_types =  ProjectTypeInformation.joins('INNER JOIN project_types ON project_type_informations.project_type_id = project_types.id').where('project_type_informations.created_at > ? and project_type_informations.created_at < ?',DateTime.current.midnight - 30.day,Date.current.midnight + 1.day).group(:project_type_name).count
 end

end