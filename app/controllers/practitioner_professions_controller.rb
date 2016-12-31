class PractitionerProfessionsController < ApplicationController
  authorize_resource
  before_action :set_practitioner_profession, only: [:show, :edit, :update, :destroy]
  # GET /practitioner_professions
  def index
    @q = PractitionerProfession.ransack(params[:q])
    @practitioner_professions = @q.result
  end
  # GET /practitioner_professions/1
  def show
  end

  # GET /practitioner_professions/new
  def new
    @practitioner_profession = PractitionerProfession.new
  end

  # GET /practitioner_professions/1/edit
  def edit
  end

  # POST /practitioner_professions
  def create
    @practitioner_profession = PractitionerProfession.new(practitioner_profession_params)

    if @practitioner_profession.save
      redirect_to @practitioner_profession, notice: 'Practitioner profession was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /practitioner_professions/1
  def update
    if @practitioner_profession.update(practitioner_profession_params)
      redirect_to @practitioner_profession, notice: 'Practitioner profession was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /practitioner_professions/1
  def destroy
    @practitioner_profession.destroy
    redirect_to practitioner_professions_url, notice: 'Practitioner profession was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_practitioner_profession
      @practitioner_profession = PractitionerProfession.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def practitioner_profession_params

      params.require(:practitioner_profession).permit(:name)

    end
end
