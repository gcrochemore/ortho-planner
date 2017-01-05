class InteractionObjectsController < ApplicationController
  authorize_resource
  before_action :set_interaction_object, only: [:show, :edit, :update, :destroy]
  # GET /interaction_objects
  def index
    @q = InteractionObject.ransack(params[:q])
    @interaction_objects = @q.result
  end
  # GET /interaction_objects/1
  def show
  end

  # GET /interaction_objects/new
  def new
    @interaction_object = InteractionObject.new
  end

  # GET /interaction_objects/1/edit
  def edit
  end

  # POST /interaction_objects
  def create
    @interaction_object = InteractionObject.new(interaction_object_params)

    if @interaction_object.save
      redirect_to @interaction_object, notice: 'Interaction object was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /interaction_objects/1
  def update
    if @interaction_object.update(interaction_object_params)
      redirect_to @interaction_object, notice: 'Interaction object was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /interaction_objects/1
  def destroy
    @interaction_object.destroy
    redirect_to interaction_objects_url, notice: 'Interaction object was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interaction_object
      @interaction_object = InteractionObject.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def interaction_object_params

      params.require(:interaction_object).permit(:name)

    end
end
