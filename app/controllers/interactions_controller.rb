class InteractionsController < ApplicationController
  authorize_resource
  before_action :set_interaction, only: [:show, :edit, :update, :destroy]
  # GET /interactions
  def index
    @q = Interaction.ransack(params[:q])
    @interactions = @q.result
  end
  # GET /interactions/1
  def show
  end

  # GET /interactions/new
  def new
    @interaction = Interaction.new
  end

  # GET /interactions/1/edit
  def edit
  end

  # POST /interactions
  def create
    @interaction = Interaction.new(interaction_params)

    if @interaction.save
      redirect_to @interaction, notice: 'Interaction was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /interactions/1
  def update
    if @interaction.update(interaction_params)
      redirect_to @interaction, notice: 'Interaction was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /interactions/1
  def destroy
    @interaction.destroy
    redirect_to interactions_url, notice: 'Interaction was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interaction
      @interaction = Interaction.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def interaction_params

      params.require(:interaction).permit(:patient_id, :interaction_type_id, :interaction_date, :comments)

    end
end
