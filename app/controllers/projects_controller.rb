class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index

    if params[:project_status_id].nil?
      @projects = Project.where('project_status_id not in (17,18)')
    else
      @projects = ProjectStatus.find(params[:project_status_id]).projects
    end
end

  def inactive_projects
    @projects = Project.where('project_status_id in (17,18)')
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project_site = ProjectSite.new
    @contact = Contact.new
    @project = Project.find(params[:id])
    @project_site_information = ProjectSiteInformation.new()
    @project_contact = ProjectContact.new()
    respond_to do |format|
      format.html
      format.pdf do
        pdf = Pif.new(@project, view_context)
        send_data pdf.render, filename: "PIF ##{@project.id}.pdf", type: "application/pdf", disposition: "inline"
      end
    end



  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    @old_status = @project.project_status_id.to_s

    respond_to do |format|
      if @project.update(project_params)
        if params[:project][:project_status_id] != @old_status
          StatusMailer.sample_email(@project).deliver
        end
        # if @project.project_status_id_change
          # @project.project_status_id_changed?

          # end
        # end
        format.html { redirect_to projects_path, notice: 'Project was successfully updated.' }

        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:project_name, :start_date, :proposal_deadline, :client_goal, :time_frame_description, :mobilization_quantity, :liquidate_damages_yn, :prevailing_wages_certified_payroll_yn, :permit_special_inspection_in_possession, :restricted_work_hours, :permit_submittal_required, :permit_fees_required, :project_budget, :deal_type_id, :deal_type_description, :project_setting_id, :procurement_tool_id, :sales_person_id, :project_status_id, :irrigation_responsibility_id, requested_sales_document_ids: [])
    end
end
