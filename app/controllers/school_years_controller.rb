class SchoolYearsController < ApplicationController
  authorize_resource
  before_action :set_school_year, only: [:show, :edit, :update, :destroy]
  # GET /school_years
  def index
    @q = SchoolYear.ransack(params[:q])
    @school_years = @q.result.page(params[:page])
  end
  # GET /school_years/1
  def show
  end

  # GET /school_years/new
  def new
    @school_year = SchoolYear.new
  end

  # GET /school_years/1/edit
  def edit
  end

  # POST /school_years
  def create
    @school_year = SchoolYear.new(school_year_params)

    if @school_year.save
      redirect_to @school_year, notice: 'School year was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /school_years/1
  def update
    if @school_year.update(school_year_params)
      redirect_to @school_year, notice: 'School year was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /school_years/1
  def destroy
    @school_year.destroy
    redirect_to school_years_url, notice: 'School year was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_year
      @school_year = SchoolYear.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def school_year_params

      params.require(:school_year).permit(:begin_date, :end_date)

    end
end
