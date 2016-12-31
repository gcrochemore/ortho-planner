class PathologiesController < ApplicationController
  authorize_resource
  before_action :set_pathology, only: [:show, :edit, :update, :destroy]
  # GET /pathologies
  def index
    @q = Pathology.ransack(params[:q])
    @pathologies = @q.result
  end
  # GET /pathologies/1
  def show
  end

  # GET /pathologies/new
  def new
    @pathology = Pathology.new
  end

  # GET /pathologies/1/edit
  def edit
  end

  # POST /pathologies
  def create
    @pathology = Pathology.new(pathology_params)

    if @pathology.save
      redirect_to @pathology, notice: 'Pathology was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /pathologies/1
  def update
    if @pathology.update(pathology_params)
      redirect_to @pathology, notice: 'Pathology was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /pathologies/1
  def destroy
    @pathology.destroy
    redirect_to pathologies_url, notice: 'Pathology was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pathology
      @pathology = Pathology.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pathology_params

      params.require(:pathology).permit(:name)

    end
end
