class HealthPlacesController < ApplicationController
  before_action :set_health_place, only: [:show, :edit, :update, :destroy]

  # GET /health_places
  # GET /health_places.json
  def index
    @health_places = HealthPlace.all
  end

  # GET /health_places/1
  # GET /health_places/1.json
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
  # POST /health_places.json
  def create
    @health_place = HealthPlace.new(health_place_params)

    respond_to do |format|
      if @health_place.save
        format.html { redirect_to @health_place, notice: 'Health place was successfully created.' }
        format.json { render :show, status: :created, location: @health_place }
      else
        format.html { render :new }
        format.json { render json: @health_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /health_places/1
  # PATCH/PUT /health_places/1.json
  def update
    respond_to do |format|
      if @health_place.update(health_place_params)
        format.html { redirect_to @health_place, notice: 'Health place was successfully updated.' }
        format.json { render :show, status: :ok, location: @health_place }
      else
        format.html { render :edit }
        format.json { render json: @health_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /health_places/1
  # DELETE /health_places/1.json
  def destroy
    @health_place.destroy
    respond_to do |format|
      format.html { redirect_to health_places_url, notice: 'Health place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health_place
      @health_place = HealthPlace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def health_place_params
      params.require(:health_place).permit(:name, :HealthPlaceType_id)
    end
end
