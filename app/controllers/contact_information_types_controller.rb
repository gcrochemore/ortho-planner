class ContactInformationTypesController < ApplicationController
  authorize_resource
  before_action :set_contact_information_type, only: [:show, :edit, :update, :destroy]
  # GET /contact_information_types
  def index
    @q = ContactInformationType.ransack(params[:q])
    @contact_information_types = @q.result.page(params[:page])
  end
  # GET /contact_information_types/1
  def show
  end

  # GET /contact_information_types/new
  def new
    @contact_information_type = ContactInformationType.new
  end

  # GET /contact_information_types/1/edit
  def edit
  end

  # POST /contact_information_types
  def create
    @contact_information_type = ContactInformationType.new(contact_information_type_params)

    if @contact_information_type.save
      redirect_to @contact_information_type, notice: 'Contact information type was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /contact_information_types/1
  def update
    if @contact_information_type.update(contact_information_type_params)
      redirect_to @contact_information_type, notice: 'Contact information type was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /contact_information_types/1
  def destroy
    @contact_information_type.destroy
    redirect_to contact_information_types_url, notice: 'Contact information type was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_information_type
      @contact_information_type = ContactInformationType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def contact_information_type_params

      params.require(:contact_information_type).permit(:name)

    end
end
