class AbsencesController < ApplicationController
  authorize_resource
  before_action :set_absence, only: [:show, :edit, :update, :destroy]
  # GET /absences
  def index
    @q = Absence.ransack(params[:q])
    @absences = @q.result
  end
  # GET /absences/1
  def show
  end

  # GET /absences/new
  def new
    @absence = Absence.new
  end

  # GET /absences/1/edit
  def edit
  end

  # POST /absences
  def create
    @absence = Absence.new(absence_params)

    if @absence.save
      redirect_to @absence, notice: 'Absence was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /absences/1
  def update
    if @absence.update(absence_params)
      redirect_to @absence, notice: 'Absence was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /absences/1
  def destroy
    @absence.destroy
    redirect_to absences_url, notice: 'Absence was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_absence
      @absence = Absence.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def absence_params

      params.require(:absence).permit(:patient_id, :begin_date, :end_date)

    end
end
