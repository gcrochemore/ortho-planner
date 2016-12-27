class PractitionerProfessionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_practitioner_profession, only: [:show, :edit, :update, :destroy]

  # GET /practitioner_professions
  # GET /practitioner_professions.json
  def index
    @practitioner_professions = PractitionerProfession.all
  end

  # GET /practitioner_professions/1
  # GET /practitioner_professions/1.json
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
  # POST /practitioner_professions.json
  def create
    @practitioner_profession = PractitionerProfession.new(practitioner_profession_params)

    respond_to do |format|
      if @practitioner_profession.save
        format.html { redirect_to @practitioner_profession, notice: 'Practitioner profession was successfully created.' }
        format.json { render :show, status: :created, location: @practitioner_profession }
      else
        format.html { render :new }
        format.json { render json: @practitioner_profession.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /practitioner_professions/1
  # PATCH/PUT /practitioner_professions/1.json
  def update
    respond_to do |format|
      if @practitioner_profession.update(practitioner_profession_params)
        format.html { redirect_to @practitioner_profession, notice: 'Practitioner profession was successfully updated.' }
        format.json { render :show, status: :ok, location: @practitioner_profession }
      else
        format.html { render :edit }
        format.json { render json: @practitioner_profession.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /practitioner_professions/1
  # DELETE /practitioner_professions/1.json
  def destroy
    @practitioner_profession.destroy
    respond_to do |format|
      format.html { redirect_to practitioner_professions_url, notice: 'Practitioner profession was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_practitioner_profession
      @practitioner_profession = PractitionerProfession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def practitioner_profession_params
      params.require(:practitioner_profession).permit(:name)
    end
end
