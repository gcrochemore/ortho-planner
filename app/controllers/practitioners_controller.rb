class PractitionersController < ApplicationController
  authorize_resource
  before_action :set_practitioner, only: [:show, :edit, :update, :destroy]
  # GET /practitioners
  def index
    @q = Practitioner.ransack(params[:q])
    @practitioners = @q.result
  end
  # GET /practitioners/1
  def show
  end

  # GET /practitioners/new
  def new
    @practitioner = Practitioner.new
  end

  # GET /practitioners/1/edit
  def edit
  end

  # POST /practitioners
  def create
    @practitioner = Practitioner.new(practitioner_params)

    if @practitioner.save
      redirect_to @practitioner, notice: 'Practitioner was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /practitioners/1
  def update
    if @practitioner.update(practitioner_params)
      redirect_to @practitioner, notice: 'Practitioner was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /practitioners/1
  def destroy
    @practitioner.destroy
    redirect_to practitioners_url, notice: 'Practitioner was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_practitioner
      @practitioner = Practitioner.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def practitioner_params

      params.require(:practitioner).permit(:first_name, :last_name, :birth_date, :birth_place, :practitioner_profession_id, :health_place_id)

    end
end
