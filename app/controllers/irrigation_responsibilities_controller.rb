class IrrigationResponsibilitiesController < ApplicationController
  before_action :set_irrigation_responsibility, only: [:show, :edit, :update, :destroy]

  # GET /irrigation_responsibilities
  # GET /irrigation_responsibilities.json
  def index
    @irrigation_responsibilities = IrrigationResponsibility.all
  end

  # GET /irrigation_responsibilities/1
  # GET /irrigation_responsibilities/1.json
  def show
  end

  # GET /irrigation_responsibilities/new
  def new
    @irrigation_responsibility = IrrigationResponsibility.new
  end

  # GET /irrigation_responsibilities/1/edit
  def edit
  end

  # POST /irrigation_responsibilities
  # POST /irrigation_responsibilities.json
  def create
    @irrigation_responsibility = IrrigationResponsibility.new(irrigation_responsibility_params)

    respond_to do |format|
      if @irrigation_responsibility.save
        format.html { redirect_to @irrigation_responsibility, notice: 'Irrigation responsibility was successfully created.' }
        format.json { render :show, status: :created, location: @irrigation_responsibility }
      else
        format.html { render :new }
        format.json { render json: @irrigation_responsibility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /irrigation_responsibilities/1
  # PATCH/PUT /irrigation_responsibilities/1.json
  def update
    respond_to do |format|
      if @irrigation_responsibility.update(irrigation_responsibility_params)
        format.html { redirect_to @irrigation_responsibility, notice: 'Irrigation responsibility was successfully updated.' }
        format.json { render :show, status: :ok, location: @irrigation_responsibility }
      else
        format.html { render :edit }
        format.json { render json: @irrigation_responsibility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /irrigation_responsibilities/1
  # DELETE /irrigation_responsibilities/1.json
  def destroy
    @irrigation_responsibility.destroy
    respond_to do |format|
      format.html { redirect_to irrigation_responsibilities_url, notice: 'Irrigation responsibility was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_irrigation_responsibility
      @irrigation_responsibility = IrrigationResponsibility.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def irrigation_responsibility_params
      params.require(:irrigation_responsibility).permit(:irrigation_responsibility_name)
    end
end
