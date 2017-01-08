

class PatientsActsController < ApplicationController
  authorize_resource
  before_action :set_patients_act, only: [:show, :edit, :update, :destroy]
  # GET /patients_acts
  def index
    @q = PatientsAct.ransack(params[:q])
    @patients_acts = @q.result.page(params[:page])
  end
  # GET /patients_acts/1
  def show
  end

  # GET /patients_acts/new
  def new
    @patients_act = PatientsAct.new
  end

  # GET /patients_acts/1/edit
  def edit
  end

  # POST /patients_acts
  def create
    @patients_act = PatientsAct.new(patients_act_params)

    if @patients_act.save
      redirect_to @patients_act, notice: 'Patients act was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /patients_acts/1
  def update
    if @patients_act.update(patients_act_params)
      redirect_to @patients_act, notice: 'Patients act was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /patients_acts/1
  def destroy
    @patients_act.destroy
    redirect_to patients_acts_url, notice: 'Patients act was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patients_act
      @patients_act = PatientsAct.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def patients_act_params

      params.require(:patients_act).permit(:patient_id, :act_id)

    end
end
