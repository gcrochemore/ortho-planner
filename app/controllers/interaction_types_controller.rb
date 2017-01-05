class InteractionTypesController < ApplicationController
  authorize_resource
  before_action :set_interaction_type, only: [:show, :edit, :update, :destroy]
  # GET /interaction_types
  def index
    @q = InteractionType.ransack(params[:q])
    @interaction_types = @q.result
  end
  # GET /interaction_types/1
  def show
  end

  # GET /interaction_types/new
  def new
    @interaction_type = InteractionType.new
  end

  # GET /interaction_types/1/edit
  def edit
  end

  # POST /interaction_types
  def create
    @interaction_type = InteractionType.new(interaction_type_params)

    if @interaction_type.save
      redirect_to @interaction_type, notice: 'Interaction type was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /interaction_types/1
  def update
    if @interaction_type.update(interaction_type_params)
      redirect_to @interaction_type, notice: 'Interaction type was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /interaction_types/1
  def destroy
    @interaction_type.destroy
    redirect_to interaction_types_url, notice: 'Interaction type was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interaction_type
      @interaction_type = InteractionType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def interaction_type_params

      params.require(:interaction_type).permit(:name, :glyphicon)

    end
end
