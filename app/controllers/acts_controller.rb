class ActsController < ApplicationController
  authorize_resource
  before_action :set_act, only: [:show, :edit, :update, :destroy]
  # GET /acts
  def index
    @q = Act.ransack(params[:q])
    @acts = @q.result.page(params[:page])
  end
  # GET /acts/1
  def show
  end

  # GET /acts/new
  def new
    @act = Act.new
  end

  # GET /acts/1/edit
  def edit
  end

  # POST /acts
  def create
    @act = Act.new(act_params)

    if @act.save
      redirect_to @act, notice: 'Act was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /acts/1
  def update
    if @act.update(act_params)
      redirect_to @act, notice: 'Act was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /acts/1
  def destroy
    @act.destroy
    redirect_to acts_url, notice: 'Act was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_act
      @act = Act.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def act_params

      params.require(:act).permit(:name, :AMO)

    end
end
