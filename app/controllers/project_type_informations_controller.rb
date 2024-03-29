class ProjectTypeInformationsController < ApplicationController
  before_action :set_project_type_information, only: [:show, :edit, :update, :destroy]

  # GET /project_type_informations
  # GET /project_type_informations.json
  def index
    @project_type_informations = ProjectTypeInformation.all
  end

  # GET /project_type_informations/1
  # GET /project_type_informations/1.json
  def show
    @project_site_informations = ProjectSiteInformation.all
    @project_type = ProjectType.all
    @category = Category.all
    @category_option = CategoryOption.all
    @category_option_selection = CategoryOptionSelection.all
  end

  # GET /project_type_informations/new
  def new
    @project_type_information = ProjectTypeInformation.new
  end

  def deleteOnProjectSiteInfo
    @project_site_information_id = @project_type_information.project_site_information.id
    @project_type_information.destroy
    respond_to do |format|
      format.html { redirect_to project_type_informations_url, notice: 'Project type information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # GET /project_type_informations/1/edit
  def edit
  end

  # POST /project_type_informations
  # POST /project_type_informations.json
  def create
    @project_type_information = ProjectTypeInformation.new(project_type_information_params)

    respond_to do |format|
      if @project_type_information.save
        format.html { redirect_to @project_type_information, notice: 'Project type information was successfully created.' }
        format.json { render :show, status: :created, location: @project_type_information }
        format.js {render :file => "/project_site_informations/show.js.erb"}
      else
        format.html { render :new }
        format.json { render json: @project_type_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_type_informations/1
  # PATCH/PUT /project_type_informations/1.json
  def update

    respond_to do |format|
      if (!params[:question_ids].nil?)
        Answer.where('project_type_information_id = ' + @project_type_information.id.to_s).destroy_all
        i = 0
        while i < params[:question_ids].size do
          a = Answer.create(:question_id => params[:question_ids][i], :project_type_information_id => @project_type_information.id , :answer_text => params[:answer_texts][i])
          a.save
          i = i + 1
        end
      end
      if (@project_type_information.update(project_type_information_params))
        format.html { redirect_to @project_type_information, notice: 'Project type information was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_type_information }
      else
        format.html { render :edit }
        format.json { render json: @project_type_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_type_informations/1
  # DELETE /project_type_informations/1.json
  def destroy
    @project_site_information_id = @project_type_information.project_site_information.id
    @project_type_information.destroy
    respond_to do |format|
      # format.html { redirect_to project_type_informations_url, notice: 'Project type information was successfully destroyed.' }
      format.html { redirect_to project_site_information_path(ProjectSiteInformation.find(@project_site_information_id)), notice: 'Design information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_project_type_information
    @project_type_information = ProjectTypeInformation.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def project_type_information_params
    params.require(:project_type_information).permit(:proposal_number, :revision_number, :project_type_id, :wind_load, :building_code, :project_site_information_id, :category_option_ids => [], :question_ids => [], :answer_texts =>[])
  end
end