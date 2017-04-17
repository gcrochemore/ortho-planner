

class PatientAvailabilitiesController < ApplicationController
  authorize_resource
  before_action :set_patient_availability, only: [:show, :edit, :update, :destroy]
  # GET /patient_availabilities
  def index
    @q = PatientAvailability.ransack(params[:q])
    @patient_availabilities = @q.result.page(params[:page])
  end
  # GET /patient_availabilities/1
  def show
  end

  # GET /patient_availabilities/new
  def new
    @patient_availability = PatientAvailability.new
  end

  # GET /patient_availabilities/1/edit
  def edit
  end

  # POST /patient_availabilities
  def create
    @patient_availability = PatientAvailability.new(patient_availability_params)

    if @patient_availability.save
      redirect_to @patient_availability, notice: 'Patient availability was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /patient_availabilities/1
  def update
    if @patient_availability.update(patient_availability_params)
      redirect_to @patient_availability, notice: 'Patient availability was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /patient_availabilities/1
  def destroy
    @patient_availability.destroy
    redirect_to patient_availabilities_url, notice: 'Patient availability was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_availability
      @patient_availability = PatientAvailability.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def patient_availability_params

      params.require(:patient_availability).permit(:patient_id, :day, :period, :available)

    end
end
