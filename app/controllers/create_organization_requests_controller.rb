class CreateOrganizationRequestsController < ApplicationController
  before_action :set_create_organization_request, only: %i[ show edit update destroy ]

  # GET /create_organization_requests or /create_organization_requests.json
  def index
    @create_organization_requests = CreateOrganizationRequest.all
  end

  # GET /create_organization_requests/1 or /create_organization_requests/1.json
  def show
  end

  # GET /create_organization_requests/new
  def new
    @create_organization_request = CreateOrganizationRequest.new
  end

  # GET /create_organization_requests/1/edit
  def edit
  end

  # POST /create_organization_requests or /create_organization_requests.json
  def create
    @create_organization_request = CreateOrganizationRequest.new(create_organization_request_params)

    respond_to do |format|
      if @create_organization_request.save
        format.html { redirect_to @create_organization_request, notice: "Create organization request was successfully created." }
        format.json { render :show, status: :created, location: @create_organization_request }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @create_organization_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /create_organization_requests/1 or /create_organization_requests/1.json
  def update
    respond_to do |format|
      if @create_organization_request.update(create_organization_request_params)
        format.html { redirect_to @create_organization_request, notice: "Create organization request was successfully updated." }
        format.json { render :show, status: :ok, location: @create_organization_request }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @create_organization_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /create_organization_requests/1 or /create_organization_requests/1.json
  def destroy
    @create_organization_request.destroy
    respond_to do |format|
      format.html { redirect_to create_organization_requests_url, notice: "Create organization request was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_create_organization_request
      @create_organization_request = CreateOrganizationRequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def create_organization_request_params
      params.require(:create_organization_request).permit(:name, :nickname, :creation_date, :address, :address_complement, :zip_code, :city_id, :email, :phone_number, :status_id, :siren, :description, :activity_sector_id, :naf_ape, :logo_url, :website_url, :validation, :user_id)
    end
end
