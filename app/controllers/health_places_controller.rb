

class HealthPlacesController < ApplicationController
  before_action :set_health_place, only: [:show, :edit, :update, :destroy]
  # GET /health_places
  def index
    @q = HealthPlace.ransack(params[:q])
    @health_places = @q.result
  end
  # GET /health_places/1
  def show
  end

  # GET /health_places/new
  def new
    @health_place = HealthPlace.new
  end

  # GET /health_places/1/edit
  def edit
  end

  # POST /health_places
  def create
    @health_place = HealthPlace.new(health_place_params)

    if @health_place.save
      redirect_to @health_place, notice: 'Health place was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /health_places/1
  def update
    if @health_place.update(health_place_params)
      redirect_to @health_place, notice: 'Health place was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /health_places/1
  def destroy
    @health_place.destroy
    redirect_to health_places_url, notice: 'Health place was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health_place
      @health_place = HealthPlace.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def health_place_params

      params.require(:health_place).permit(:name, :health_place_type_id)

    end
end
