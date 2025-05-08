class WorshipServicesController < ApplicationController
  before_action :set_worship_service, only: %i[ show edit update destroy ]

  # GET /worship_services or /worship_services.json
  def index
    @worship_services = WorshipService.all
  end

  # GET /worship_services/1 or /worship_services/1.json
  def show
  end

  # GET /worship_services/new
  def new
    @worship_service = WorshipService.new
  end

  # GET /worship_services/1/edit
  def edit
  end

  # POST /worship_services or /worship_services.json
  def create
    @worship_service = WorshipService.new(worship_service_params)

    respond_to do |format|
      if @worship_service.save
        format.html { redirect_to @worship_service, notice: "Worship service was successfully created." }
        format.json { render :show, status: :created, location: @worship_service }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @worship_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /worship_services/1 or /worship_services/1.json
  def update
    respond_to do |format|
      if @worship_service.update(worship_service_params)
        format.html { redirect_to @worship_service, notice: "Worship service was successfully updated." }
        format.json { render :show, status: :ok, location: @worship_service }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @worship_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /worship_services/1 or /worship_services/1.json
  def destroy
    @worship_service.destroy!

    respond_to do |format|
      format.html { redirect_to worship_services_path, status: :see_other, notice: "Worship service was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_worship_service
      @worship_service = WorshipService.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def worship_service_params
      params.expect(worship_service: [ :date, :occasion_id ])
    end
end
