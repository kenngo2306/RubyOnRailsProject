class SoilConditionsController < ApplicationController
  before_action :set_soil_condition, only: [:show, :edit, :update, :destroy]

  # GET /soil_conditions
  # GET /soil_conditions.json
  def index
    @soil_conditions = SoilCondition.all
  end

  # GET /soil_conditions/1
  # GET /soil_conditions/1.json
  def show
  end

  # GET /soil_conditions/new
  def new
    @soil_condition = SoilCondition.new
  end

  # GET /soil_conditions/1/edit
  def edit
  end

  # POST /soil_conditions
  # POST /soil_conditions.json
  def create
    @soil_condition = SoilCondition.new(soil_condition_params)

    respond_to do |format|
      if @soil_condition.save
        format.html { redirect_to @soil_condition, notice: 'Soil condition was successfully created.' }
        format.json { render :show, status: :created, location: @soil_condition }
      else
        format.html { render :new }
        format.json { render json: @soil_condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /soil_conditions/1
  # PATCH/PUT /soil_conditions/1.json
  def update
    respond_to do |format|
      if @soil_condition.update(soil_condition_params)
        format.html { redirect_to @soil_condition, notice: 'Soil condition was successfully updated.' }
        format.json { render :show, status: :ok, location: @soil_condition }
      else
        format.html { render :edit }
        format.json { render json: @soil_condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /soil_conditions/1
  # DELETE /soil_conditions/1.json
  def destroy
    @soil_condition.destroy
    respond_to do |format|
      format.html { redirect_to soil_conditions_url, notice: 'Soil condition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_soil_condition
      @soil_condition = SoilCondition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def soil_condition_params
      params.require(:soil_condition).permit(:soil_condition_name)
    end
end
