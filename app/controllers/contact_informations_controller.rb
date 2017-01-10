class ContactInformationsController < ApplicationController
  authorize_resource
  before_action :set_contact_information, only: [:show, :edit, :update, :destroy]
  # GET /contact_informations
  def index
    @q = ContactInformation.ransack(params[:q])
    @contact_informations = @q.result.page(params[:page])
  end
  # GET /contact_informations/1
  def show
  end

  # GET /contact_informations/new
  def new
    @contact_information = ContactInformation.new
  end

  # GET /contact_informations/1/edit
  def edit
  end

  # POST /contact_informations
  def create
    @contact_information = ContactInformation.new(contact_information_params)

    if @contact_information.save
      redirect_to @contact_information, notice: 'Contact information was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /contact_informations/1
  def update
    if @contact_information.update(contact_information_params)
      redirect_to @contact_information, notice: 'Contact information was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /contact_informations/1
  def destroy
    @contact_information.destroy
    redirect_to contact_informations_url, notice: 'Contact information was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_information
      @contact_information = ContactInformation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def contact_information_params

      params.require(:contact_information).permit(:contactable_id, :contactable_type, :contact_information_type_id, :value)

    end
end
