class StatusCategoriesController < ApplicationController
  before_action :set_status_category, only: [:show, :edit, :update, :destroy]

  # GET /status_categories
  # GET /status_categories.json
  def index
    @status_categories = StatusCategory.all
  end

  # GET /status_categories/1
  # GET /status_categories/1.json
  def show
  end

  # GET /status_categories/new
  def new
    @status_category = StatusCategory.new
  end

  # GET /status_categories/1/edit
  def edit
  end

  # POST /status_categories
  # POST /status_categories.json
  def create
    @status_category = StatusCategory.new(status_category_params)

    respond_to do |format|
      if @status_category.save
        format.html { redirect_to @status_category, notice: 'Status category was successfully created.' }
        format.json { render :show, status: :created, location: @status_category }
      else
        format.html { render :new }
        format.json { render json: @status_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /status_categories/1
  # PATCH/PUT /status_categories/1.json
  def update
    respond_to do |format|
      if @status_category.update(status_category_params)
        format.html { redirect_to @status_category, notice: 'Status category was successfully updated.' }
        format.json { render :show, status: :ok, location: @status_category }
      else
        format.html { render :edit }
        format.json { render json: @status_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_categories/1
  # DELETE /status_categories/1.json
  def destroy
    @status_category.destroy
    respond_to do |format|
      format.html { redirect_to status_categories_url, notice: 'Status category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status_category
      @status_category = StatusCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def status_category_params
      params.require(:status_category).permit(:status_category_name)
    end
end
