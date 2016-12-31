class HealthPlaceTypesController < ApplicationController
  before_action :set_health_place_type, only: [:show, :edit, :update, :destroy]

  # GET /health_place_types
  # GET /health_place_types.json
  def index
    @health_place_types = HealthPlaceType.all
  end

  # GET /health_place_types/1
  # GET /health_place_types/1.json
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
  # POST /health_place_types.json
  def create
    @health_place_type = HealthPlaceType.new(health_place_type_params)

    respond_to do |format|
      if @health_place_type.save
        format.html { redirect_to @health_place_type, notice: 'Health place type was successfully created.' }
        format.json { render :show, status: :created, location: @health_place_type }
      else
        format.html { render :new }
        format.json { render json: @health_place_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /health_place_types/1
  # PATCH/PUT /health_place_types/1.json
  def update
    respond_to do |format|
      if @health_place_type.update(health_place_type_params)
        format.html { redirect_to @health_place_type, notice: 'Health place type was successfully updated.' }
        format.json { render :show, status: :ok, location: @health_place_type }
      else
        format.html { render :edit }
        format.json { render json: @health_place_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /health_place_types/1
  # DELETE /health_place_types/1.json
  def destroy
    @health_place_type.destroy
    respond_to do |format|
      format.html { redirect_to health_place_types_url, notice: 'Health place type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health_place_type
      @health_place_type = HealthPlaceType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def health_place_type_params
      params.require(:health_place_type).permit(:name)
    end
end
