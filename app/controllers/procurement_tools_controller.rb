class ProcurementToolsController < ApplicationController
  before_action :set_procurement_tool, only: [:show, :edit, :update, :destroy]

  # GET /procurement_tools
  # GET /procurement_tools.json
  def index
    @procurement_tools = ProcurementTool.all
  end

  # GET /procurement_tools/1
  # GET /procurement_tools/1.json
  def show
  end

  # GET /procurement_tools/new
  def new
    @procurement_tool = ProcurementTool.new
  end

  # GET /procurement_tools/1/edit
  def edit
  end

  # POST /procurement_tools
  # POST /procurement_tools.json
  def create
    @procurement_tool = ProcurementTool.new(procurement_tool_params)

    respond_to do |format|
      if @procurement_tool.save
        format.html { redirect_to @procurement_tool, notice: 'Procurement tool was successfully created.' }
        format.json { render :show, status: :created, location: @procurement_tool }
      else
        format.html { render :new }
        format.json { render json: @procurement_tool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /procurement_tools/1
  # PATCH/PUT /procurement_tools/1.json
  def update
    respond_to do |format|
      if @procurement_tool.update(procurement_tool_params)
        format.html { redirect_to @procurement_tool, notice: 'Procurement tool was successfully updated.' }
        format.json { render :show, status: :ok, location: @procurement_tool }
      else
        format.html { render :edit }
        format.json { render json: @procurement_tool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /procurement_tools/1
  # DELETE /procurement_tools/1.json
  def destroy
    @procurement_tool.destroy
    respond_to do |format|
      format.html { redirect_to procurement_tools_url, notice: 'Procurement tool was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_procurement_tool
      @procurement_tool = ProcurementTool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def procurement_tool_params
      params.require(:procurement_tool).permit(:procurement_tool_name)
    end
end
