class HealthPlaceTypesController < ApplicationController
  before_action :set_health_place_type, only: [:show, :edit, :update, :destroy]
  # GET /health_place_types
  def index
    @q = HealthPlaceType.ransack(params[:q])
    @health_place_types = @q.result
  end
  # GET /health_place_types/1
  def show
  end

  # GET /health_place_types/new
  def new
    @health_place_type = HealthPlaceType.new
  end

  # GET /health_place_types/1/edit
  def edit
  end

  # POST /health_place_types
  def create
    @health_place_type = HealthPlaceType.new(health_place_type_params)

    if @health_place_type.save
      redirect_to @health_place_type, notice: 'Health place type was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /health_place_types/1
  def update
    if @health_place_type.update(health_place_type_params)
      redirect_to @health_place_type, notice: 'Health place type was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /health_place_types/1
  def destroy
    @health_place_type.destroy
    redirect_to health_place_types_url, notice: 'Health place type was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health_place_type
      @health_place_type = HealthPlaceType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def health_place_type_params

      params.require(:health_place_type).permit(:name)

    end
end
