

class PatientsPathologiesController < ApplicationController
  authorize_resource
  before_action :set_patients_pathology, only: [:show, :edit, :update, :destroy]
  # GET /patients_pathologies
  def index
    @q = PatientsPathology.ransack(params[:q])
    @patients_pathologies = @q.result.page(params[:page])
  end
  # GET /patients_pathologies/1
  def show
  end

  # GET /patients_pathologies/new
  def new
    @patients_pathology = PatientsPathology.new
  end

  # GET /patients_pathologies/1/edit
  def edit
  end

  # POST /patients_pathologies
  def create
    @patients_pathology = PatientsPathology.new(patients_pathology_params)

    if @patients_pathology.save
      redirect_to @patients_pathology, notice: 'Patients pathology was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /patients_pathologies/1
  def update
    if @patients_pathology.update(patients_pathology_params)
      redirect_to @patients_pathology, notice: 'Patients pathology was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /patients_pathologies/1
  def destroy
    @patients_pathology.destroy
    redirect_to patients_pathologies_url, notice: 'Patients pathology was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patients_pathology
      @patients_pathology = PatientsPathology.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def patients_pathology_params

      params.require(:patients_pathology).permit(:patient_id, :pathology_id)

    end
end
