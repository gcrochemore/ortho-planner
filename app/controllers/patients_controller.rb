class PatientsController < ApplicationController
  authorize_resource
  before_action :set_patient, only: [:show, :edit, :update, :destroy]
  # GET /patients
  def index
    @q = Patient.ransack(params[:q])
    @patients = @q.result
  end
  # GET /patients/1
  def show
  end

  # GET /patients/new
  def new
    @patient = Patient.new
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients
  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      redirect_to @patient, notice: 'Patient was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /patients/1
  def update
    if @patient.update(patient_params)
      redirect_to @patient, notice: 'Patient was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /patients/1
  def destroy
    @patient.destroy
    redirect_to patients_url, notice: 'Patient was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.includes(:interactions).find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def patient_params

      params.require(:patient).permit(:last_name, :first_name, :birth_date, :birth_place, :phone_number, :act_ids => [], interactions_attributes: [:id, :patient_id, :interaction_type_id, :interaction_date, :comments, :_destroy], therapies_attributes: [:id, :practitioner_id, :begin_date, :end_date, :patient_id, :health_place_id, :_destroy], addresses_attributes: [:id, :name, :street_number, :street_name, :postal_code, :city, :latitude, :longitude, :addressable_id, :addressable_type, :_destroy])

    end
end
