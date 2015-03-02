class ProjectSoilConditionsController < ApplicationController
  before_action :set_project_soil_condition, only: [:show, :edit, :update, :destroy]

  # GET /project_soil_conditions
  # GET /project_soil_conditions.json
  def index
    @project_soil_conditions = ProjectSoilCondition.all
  end

  # GET /project_soil_conditions/1
  # GET /project_soil_conditions/1.json
  def show
  end

  # GET /project_soil_conditions/new
  def new
    @project_soil_condition = ProjectSoilCondition.new
  end

  # GET /project_soil_conditions/1/edit
  def edit
  end

  # POST /project_soil_conditions
  # POST /project_soil_conditions.json
  def create
    @project_soil_condition = ProjectSoilCondition.new(project_soil_condition_params)

    respond_to do |format|
      if @project_soil_condition.save
        format.html { redirect_to @project_soil_condition, notice: 'Project soil condition was successfully created.' }
        format.json { render :show, status: :created, location: @project_soil_condition }
      else
        format.html { render :new }
        format.json { render json: @project_soil_condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_soil_conditions/1
  # PATCH/PUT /project_soil_conditions/1.json
  def update
    respond_to do |format|
      if @project_soil_condition.update(project_soil_condition_params)
        format.html { redirect_to @project_soil_condition, notice: 'Project soil condition was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_soil_condition }
      else
        format.html { render :edit }
        format.json { render json: @project_soil_condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_soil_conditions/1
  # DELETE /project_soil_conditions/1.json
  def destroy
    @project_soil_condition.destroy
    respond_to do |format|
      format.html { redirect_to project_soil_conditions_url, notice: 'Project soil condition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_soil_condition
      @project_soil_condition = ProjectSoilCondition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_soil_condition_params
      params.require(:project_soil_condition).permit(:soil_condition_id, :project_site_information_id)
    end
end
