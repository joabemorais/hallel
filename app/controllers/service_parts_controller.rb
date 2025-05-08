class ServicePartsController < ApplicationController
  before_action :set_service_part, only: %i[ show edit update destroy ]

  # GET /service_parts or /service_parts.json
  def index
    @service_parts = ServicePart.all
  end

  # GET /service_parts/1 or /service_parts/1.json
  def show
  end

  # GET /service_parts/new
  def new
    @service_part = ServicePart.new
  end

  # GET /service_parts/1/edit
  def edit
  end

  # POST /service_parts or /service_parts.json
  def create
    @service_part = ServicePart.new(service_part_params)

    respond_to do |format|
      if @service_part.save
        format.html { redirect_to @service_part, notice: "Service part was successfully created." }
        format.json { render :show, status: :created, location: @service_part }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @service_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_parts/1 or /service_parts/1.json
  def update
    respond_to do |format|
      if @service_part.update(service_part_params)
        format.html { redirect_to @service_part, notice: "Service part was successfully updated." }
        format.json { render :show, status: :ok, location: @service_part }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @service_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_parts/1 or /service_parts/1.json
  def destroy
    @service_part.destroy!

    respond_to do |format|
      format.html { redirect_to service_parts_path, status: :see_other, notice: "Service part was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_part
      @service_part = ServicePart.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def service_part_params
      params.expect(service_part: [ :name ])
    end
end
