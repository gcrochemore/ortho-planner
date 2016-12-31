class SessionsController < ApplicationController
  authorize_resource
  before_action :set_session, only: [:show, :edit, :update, :destroy]
  # GET /sessions
  def index
    @q = Session.ransack(params[:q])
    @sessions = @q.result
  end
  # GET /sessions/1
  def show
  end

  # GET /sessions/new
  def new
    @session = Session.new
  end

  # GET /sessions/1/edit
  def edit
  end

  # POST /sessions
  def create
    @session = Session.new(session_params)

    if @session.save
      redirect_to @session, notice: 'Session was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /sessions/1
  def update
    if @session.update(session_params)
      redirect_to @session, notice: 'Session was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /sessions/1
  def destroy
    @session.destroy
    redirect_to sessions_url, notice: 'Session was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session
      @session = Session.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def session_params

      params.require(:session).permit(:begin_date, :end_date, :therapy_id, :act_id, :practitioner_id, :health_place_id)

    end
end
