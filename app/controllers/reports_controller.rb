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

 def monthly_projects
 end

 def client_params
  params.require(:client).permit(:client_id,:client_name, :created_at)
 end

 def project_params
  params.require(:project).permit(:project_id,:project_name,:created_at)
 end

end