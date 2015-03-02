class RequestedSalesDocumentsController < ApplicationController
  before_action :set_requested_sales_document, only: [:show, :edit, :update, :destroy]

  # GET /requested_sales_documents
  # GET /requested_sales_documents.json
  def index
    @requested_sales_documents = RequestedSalesDocument.all
  end

  # GET /requested_sales_documents/1
  # GET /requested_sales_documents/1.json
  def show
  end

  # GET /requested_sales_documents/new
  def new
    @requested_sales_document = RequestedSalesDocument.new
  end

  # GET /requested_sales_documents/1/edit
  def edit
  end

  # POST /requested_sales_documents
  # POST /requested_sales_documents.json
  def create
    @requested_sales_document = RequestedSalesDocument.new(requested_sales_document_params)

    respond_to do |format|
      if @requested_sales_document.save
        format.html { redirect_to @requested_sales_document, notice: 'Requested sales document was successfully created.' }
        format.json { render :show, status: :created, location: @requested_sales_document }
      else
        format.html { render :new }
        format.json { render json: @requested_sales_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requested_sales_documents/1
  # PATCH/PUT /requested_sales_documents/1.json
  def update
    respond_to do |format|
      if @requested_sales_document.update(requested_sales_document_params)
        format.html { redirect_to @requested_sales_document, notice: 'Requested sales document was successfully updated.' }
        format.json { render :show, status: :ok, location: @requested_sales_document }
      else
        format.html { render :edit }
        format.json { render json: @requested_sales_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requested_sales_documents/1
  # DELETE /requested_sales_documents/1.json
  def destroy
    @requested_sales_document.destroy
    respond_to do |format|
      format.html { redirect_to requested_sales_documents_url, notice: 'Requested sales document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requested_sales_document
      @requested_sales_document = RequestedSalesDocument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def requested_sales_document_params
      params.require(:requested_sales_document).permit(:requested_sales_document_name)
    end
end
