class SchoolingsController < ApplicationController
  authorize_resource
  before_action :set_schooling, only: [:show, :edit, :update, :destroy]
  # GET /schoolings
  def index
    @q = Schooling.ransack(params[:q])
    @schoolings = @q.result.page(params[:page])
  end
  # GET /schoolings/1
  def show
  end

  # GET /schoolings/new
  def new
    @schooling = Schooling.new
  end

  # GET /schoolings/1/edit
  def edit
  end

  # POST /schoolings
  def create
    @schooling = Schooling.new(schooling_params)

    if @schooling.save
      redirect_to @schooling, notice: 'Schooling was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /schoolings/1
  def update
    if @schooling.update(schooling_params)
      redirect_to @schooling, notice: 'Schooling was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /schoolings/1
  def destroy
    @schooling.destroy
    redirect_to schoolings_url, notice: 'Schooling was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schooling
      @schooling = Schooling.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def schooling_params

      params.require(:schooling).permit(:patient_id, :school_id, :school_level_id, :school_year_id)

    end
end
