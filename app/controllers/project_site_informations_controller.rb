class ProjectSiteInformationsController < ApplicationController
  before_action :set_project_site_information, only: [:show, :edit, :update, :destroy]

  # GET /project_site_informations
  # GET /project_site_informations.json
  def index
    @project_site_informations = ProjectSiteInformation.all

  end

  # GET /project_site_informations/1
  # GET /project_site_informations/1.json
  def show
    @project_type_information = ProjectTypeInformation.new
  end

  # GET /project_site_informations/new
  def new
    @project_site_information = ProjectSiteInformation.new
  end

  # GET /project_site_informations/1/edit
  def edit
  end

  # POST /project_site_informations
  # POST /project_site_informations.json
  def create
    @project_site_information = ProjectSiteInformation.new(project_site_information_params)

    respond_to do |format|
      if @project_site_information.save
        format.html { redirect_to @project_site_information, notice: 'Project site information was successfully created.' }
        format.json { render :show, status: :created, location: @project_site_information }
        format.js {render :file => "projects/showForExistedSite.js.erb" }
      else
        format.html { render :new }
        format.json { render json: @project_site_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_site_informations/1
  # PATCH/PUT /project_site_informations/1.json
  def update
    respond_to do |format|
      if @project_site_information.update(project_site_information_params)
        format.html { redirect_to @project_site_information, notice: 'Project site information was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_site_information }
      else
        format.html { render :edit }
        format.json { render json: @project_site_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_site_informations/1
  # DELETE /project_site_informations/1.json
  def destroy
    @project_site_information.destroy
    respond_to do |format|
      format.html { redirect_to project_site_informations_url, notice: 'Project site information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_site_information
      @project_site_information = ProjectSiteInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_site_information_params
      params.require(:project_site_information).permit(:area_length, :area_width, :area_description, :geotech_report_in_possession, :bobcat_accessible, :construction_fence_required, :client_fence_dismantle_reinstall_required, :rock_excavation_required, :hand_dig_required, :dirt_haul_off_required, :tree_vegetation_removal_required, :area_is_sloped, :site_survey_required, :surface_protection_required, :under_ground_obstacles_yn, :structural_removal_required, :pvt_locator_required, :project_id, :project_site_id)
    end
end
