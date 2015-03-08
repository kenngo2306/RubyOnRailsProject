class InstallersController < ApplicationController
  before_action :set_installer, only: [:show, :edit, :update, :destroy]

  # GET /installers
  # GET /installers.json
  def index
    @installers = Installer.all
  end

  # GET /installers/1
  # GET /installers/1.json
  def show
  end

  # GET /installers/new
  def new
    @installer = Installer.new
  end

  # GET /installers/1/edit
  def edit
  end

  # POST /installers
  # POST /installers.json
  def create
    @installer = Installer.new(installer_params)

    respond_to do |format|
      if @installer.save
        format.html { redirect_to @installer, notice: 'Installer was successfully created.' }
        format.json { render :show, status: :created, location: @installer }
      else
        format.html { render :new }
        format.json { render json: @installer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /installers/1
  # PATCH/PUT /installers/1.json
  def update
    respond_to do |format|
      if @installer.update(installer_params)
        format.html { redirect_to @installer, notice: 'Installer was successfully updated.' }
        format.json { render :show, status: :ok, location: @installer }
      else
        format.html { render :edit }
        format.json { render json: @installer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /installers/1
  # DELETE /installers/1.json
  def destroy
    @installer.destroy
    respond_to do |format|
      format.html { redirect_to installers_url, notice: 'Installer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_installer
      @installer = Installer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def installer_params
      params.require(:installer).permit(:installer_first_name, :installer_last_name, :installer_email, :installer_phone, :user_id)
    end
end
