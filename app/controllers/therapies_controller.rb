class TherapiesController < ApplicationController
  authorize_resource
  before_action :set_therapy, only: [:show, :edit, :update, :destroy]
  # GET /therapies
  def index
    @q = Therapy.ransack(params[:q])
    @therapies = @q.result
  end
  # GET /therapies/1
  def show
  end

  # GET /therapies/new
  def new
    @therapy = Therapy.new
  end

  # GET /therapies/1/edit
  def edit
  end

  # POST /therapies
  def create
    @therapy = Therapy.new(therapy_params)

    if @therapy.save
      redirect_to @therapy, notice: 'Therapy was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /therapies/1
  def update
    if @therapy.update(therapy_params)
      redirect_to @therapy, notice: 'Therapy was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /therapies/1
  def destroy
    @therapy.destroy
    redirect_to therapies_url, notice: 'Therapy was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_therapy
      @therapy = Therapy.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def therapy_params

      params.require(:therapy).permit(:practitioner_id, :begin_date, :end_date, :patient_id, :health_place_id)

    end
end
