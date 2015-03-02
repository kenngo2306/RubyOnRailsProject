class ProjectRequestedSalesDocumentsController < ApplicationController
  before_action :set_project_requested_sales_document, only: [:show, :edit, :update, :destroy]

  # GET /project_requested_sales_documents
  # GET /project_requested_sales_documents.json
  def index
    @project_requested_sales_documents = ProjectRequestedSalesDocument.all
  end

  # GET /project_requested_sales_documents/1
  # GET /project_requested_sales_documents/1.json
  def show
  end

  # GET /project_requested_sales_documents/new
  def new
    @project_requested_sales_document = ProjectRequestedSalesDocument.new
  end

  # GET /project_requested_sales_documents/1/edit
  def edit
  end

  # POST /project_requested_sales_documents
  # POST /project_requested_sales_documents.json
  def create
    @project_requested_sales_document = ProjectRequestedSalesDocument.new(project_requested_sales_document_params)

    respond_to do |format|
      if @project_requested_sales_document.save
        format.html { redirect_to @project_requested_sales_document, notice: 'Project requested sales document was successfully created.' }
        format.json { render :show, status: :created, location: @project_requested_sales_document }
      else
        format.html { render :new }
        format.json { render json: @project_requested_sales_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_requested_sales_documents/1
  # PATCH/PUT /project_requested_sales_documents/1.json
  def update
    respond_to do |format|
      if @project_requested_sales_document.update(project_requested_sales_document_params)
        format.html { redirect_to @project_requested_sales_document, notice: 'Project requested sales document was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_requested_sales_document }
      else
        format.html { render :edit }
        format.json { render json: @project_requested_sales_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_requested_sales_documents/1
  # DELETE /project_requested_sales_documents/1.json
  def destroy
    @project_requested_sales_document.destroy
    respond_to do |format|
      format.html { redirect_to project_requested_sales_documents_url, notice: 'Project requested sales document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_requested_sales_document
      @project_requested_sales_document = ProjectRequestedSalesDocument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_requested_sales_document_params
      params.require(:project_requested_sales_document).permit(:project_id, :requested_sales_document_id)
    end
end
