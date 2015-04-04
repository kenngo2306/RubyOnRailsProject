class ProjectContactsController < ApplicationController
  before_action :set_project_contact, only: [:show, :edit, :update, :destroy]

  # GET /project_contacts
  # GET /project_contacts.json
  def index
    @project_contacts = ProjectContact.all
    #@project_contacts = ProjectContact.includes(:project).group(:project_name)
  end

  # GET /project_contacts/1
  # GET /project_contacts/1.json
  def show
  end

  # GET /project_contacts/new
  def new
    @project_contact = ProjectContact.new
  end

  # GET /project_contacts/1/edit
  def edit
  end

  # POST /project_contacts
  # POST /project_contacts.json
  def create
    @project_contact = ProjectContact.new(project_contact_params)

    respond_to do |format|
      if @project_contact.save
        format.html { redirect_to @project_contact, notice: 'Project contact was successfully created.' }
        format.json { render :show, status: :created, location: @project_contact }
      else
        format.html { render :new }
        format.json { render json: @project_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_contacts/1
  # PATCH/PUT /project_contacts/1.json
  def update
    respond_to do |format|
      if @project_contact.update(project_contact_params)
        format.html { redirect_to @project_contact, notice: 'Project contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_contact }
      else
        format.html { render :edit }
        format.json { render json: @project_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_contacts/1
  # DELETE /project_contacts/1.json
  def destroy
    @project_contact.destroy
    respond_to do |format|
      format.html { redirect_to project_contacts_url, notice: 'Project contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_contact
      @project_contact = ProjectContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_contact_params
      params.require(:project_contact).permit(:project_id, :contact_id)
    end
end
