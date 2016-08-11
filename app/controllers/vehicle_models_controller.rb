class VehicleModelsController < ApplicationController
  before_action :set_vehicle_model, only: [:show, :edit, :update, :destroy]

  # GET /vehicle_models
  def index
    @vehicle_models = VehicleModel.all
  end

  # GET /vehicle_models/1
  def show
  end

  # GET /vehicle_models/new
  def new
    @vehicle_model = VehicleModel.new
  end

  # GET /vehicle_models/1/edit
  def edit
  end

  # POST /vehicle_models
  def create
    @vehicle_model = VehicleModel.new(vehicle_model_params)

    if @vehicle_model.save
      redirect_to @vehicle_model, notice: 'Vehicle model was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /vehicle_models/1
  def update
    if @vehicle_model.update(vehicle_model_params)
      redirect_to @vehicle_model, notice: 'Vehicle model was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /vehicle_models/1
  def destroy
    @vehicle_model.destroy
    redirect_to vehicle_models_url, notice: 'Vehicle model was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_model
      @vehicle_model = VehicleModel.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vehicle_model_params
      params.require(:vehicle_model).permit(:name, :note, :vehicle_make_id)
    end
end
