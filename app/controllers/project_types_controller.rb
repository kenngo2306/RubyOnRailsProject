class ProjectTypesController < ApplicationController
  before_action :set_project_type, only: [:show, :edit, :update, :destroy]

  # GET /project_types
  # GET /project_types.json
  def index
    @project_types = ProjectType.all
  end

  # GET /project_types/1
  # GET /project_types/1.json
  def show
    @project_types = ProjectType.all
    @category = Category.all
    @category_option = CategoryOption.all
    @category_option_selection = CategoryOptionSelection.all
  end

  # GET /project_types/new
  def new
    @project_type = ProjectType.new
  end

  # GET /project_types/1/edit
  def edit
  end

  # POST /project_types
  # POST /project_types.json
  def create
    @project_type = ProjectType.new(project_type_params)

    respond_to do |format|
      if @project_type.save
        format.html { redirect_to @project_type, notice: 'Project type was successfully created.' }
        format.json { render :show, status: :created, location: @project_type }
      else
        format.html { render :new }
        format.json { render json: @project_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_types/1
  # PATCH/PUT /project_types/1.json
  def update
    respond_to do |format|
      if @project_type.update(project_type_params)
        format.html { redirect_to @project_type, notice: 'Project type was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_type }
      else
        format.html { render :edit }
        format.json { render json: @project_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_types/1
  # DELETE /project_types/1.json
  def destroy
    @project_type.destroy
    respond_to do |format|
      format.html { redirect_to project_types_url, notice: 'Project type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_type
      @project_type = ProjectType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_type_params
      params.require(:project_type).permit(:project_type_name, questions_attributes: [:id, :question_name, :_destroy], categories_attributes: [:id, :category_name, :_destroy, category_options_attributes: [:id, :category_option_name, :category_id, :_destroy]])
    end
end
