class SchoolLevelsController < ApplicationController
  authorize_resource
  before_action :set_school_level, only: [:show, :edit, :update, :destroy]
  # GET /school_levels
  def index
    @q = SchoolLevel.ransack(params[:q])
    @school_levels = @q.result.page(params[:page])
  end
  # GET /school_levels/1
  def show
  end

  # GET /school_levels/new
  def new
    @school_level = SchoolLevel.new
  end

  # GET /school_levels/1/edit
  def edit
  end

  # POST /school_levels
  def create
    @school_level = SchoolLevel.new(school_level_params)

    if @school_level.save
      redirect_to @school_level, notice: 'School level was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /school_levels/1
  def update
    if @school_level.update(school_level_params)
      redirect_to @school_level, notice: 'School level was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /school_levels/1
  def destroy
    @school_level.destroy
    redirect_to school_levels_url, notice: 'School level was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_level
      @school_level = SchoolLevel.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def school_level_params

      params.require(:school_level).permit(:name)

    end
end
