class VehicleMakesController < ApplicationController
  before_action :set_vehicle_make, only: [:show, :edit, :update, :destroy]

  # GET /vehicle_makes
  def index
    @vehicle_makes = VehicleMake.all
  end

  # GET /vehicle_makes/1
  def show
  end

  # GET /vehicle_makes/new
  def new
    @vehicle_make = VehicleMake.new
  end

  # GET /vehicle_makes/1/edit
  def edit
  end

  # POST /vehicle_makes
  def create
    @vehicle_make = VehicleMake.new(vehicle_make_params)

    if @vehicle_make.save
      redirect_to @vehicle_make, notice: 'Vehicle make was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /vehicle_makes/1
  def update
    if @vehicle_make.update(vehicle_make_params)
      redirect_to @vehicle_make, notice: 'Vehicle make was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /vehicle_makes/1
  def destroy
    @vehicle_make.destroy
    redirect_to vehicle_makes_url, notice: 'Vehicle make was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_make
      @vehicle_make = VehicleMake.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vehicle_make_params
      params.require(:vehicle_make).permit(:name, :note, :vehicle_type_id)
    end
end
