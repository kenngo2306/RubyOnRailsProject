class ProjectUtilitiesController < ApplicationController
  before_action :set_project_utility, only: [:show, :edit, :update, :destroy]

  # GET /project_utilities
  # GET /project_utilities.json
  def index
    @project_utilities = ProjectUtility.all
  end

  # GET /project_utilities/1
  # GET /project_utilities/1.json
  def show
  end

  # GET /project_utilities/new
  def new
    @project_utility = ProjectUtility.new
  end

  # GET /project_utilities/1/edit
  def edit
  end

  # POST /project_utilities
  # POST /project_utilities.json
  def create
    @project_utility = ProjectUtility.new(project_utility_params)

    respond_to do |format|
      if @project_utility.save
        format.html { redirect_to @project_utility, notice: 'Project utility was successfully created.' }
        format.json { render :show, status: :created, location: @project_utility }
      else
        format.html { render :new }
        format.json { render json: @project_utility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_utilities/1
  # PATCH/PUT /project_utilities/1.json
  def update
    respond_to do |format|
      if @project_utility.update(project_utility_params)
        format.html { redirect_to @project_utility, notice: 'Project utility was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_utility }
      else
        format.html { render :edit }
        format.json { render json: @project_utility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_utilities/1
  # DELETE /project_utilities/1.json
  def destroy
    @project_utility.destroy
    respond_to do |format|
      format.html { redirect_to project_utilities_url, notice: 'Project utility was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_utility
      @project_utility = ProjectUtility.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_utility_params
      params.require(:project_utility).permit(:utility_id, :project_site_information_id)
    end
end
