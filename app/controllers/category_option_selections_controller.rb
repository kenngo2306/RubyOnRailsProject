class CategoryOptionSelectionsController < ApplicationController
  before_action :set_category_option_selection, only: [:show, :edit, :update, :destroy]

  # GET /category_option_selections
  # GET /category_option_selections.json
  def index
    @category_option_selections = CategoryOptionSelection.all
  end

  # GET /category_option_selections/1
  # GET /category_option_selections/1.json
  def show
  end

  # GET /category_option_selections/new
  def new
    @category_option_selection = CategoryOptionSelection.new
  end

  # GET /category_option_selections/1/edit
  def edit
  end

  # POST /category_option_selections
  # POST /category_option_selections.json
  def create
    @category_option_selection = CategoryOptionSelection.new(category_option_selection_params)

    respond_to do |format|
      if @category_option_selection.save
        format.html { redirect_to @category_option_selection, notice: 'Category option selection was successfully created.' }
        format.json { render :show, status: :created, location: @category_option_selection }
      else
        format.html { render :new }
        format.json { render json: @category_option_selection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_option_selections/1
  # PATCH/PUT /category_option_selections/1.json
  def update
    respond_to do |format|
      if @category_option_selection.update(category_option_selection_params)
        format.html { redirect_to @category_option_selection, notice: 'Category option selection was successfully updated.' }
        format.json { render :show, status: :ok, location: @category_option_selection }
      else
        format.html { render :edit }
        format.json { render json: @category_option_selection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_option_selections/1
  # DELETE /category_option_selections/1.json
  def destroy
    @category_option_selection.destroy
    respond_to do |format|
      format.html { redirect_to category_option_selections_url, notice: 'Category option selection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_option_selection
      @category_option_selection = CategoryOptionSelection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_option_selection_params
      params.require(:category_option_selection).permit(:category_option_id, :project_type_information_id)
    end
end
