class WaitingListsController < ApplicationController
  authorize_resource
  before_action :set_waiting_list, only: [:show, :edit, :update, :destroy, :take_care, :add_interaction, 
    :stop_registration, :patient_never_return, :care_confirm, :availability_not_compatible, :reregister_on_waiting_list]

  # GET /waiting_lists
  def index
    @q = WaitingList.ransack(params[:q])
    @patients_on_waiting_list = @q.result.waiting_list.page(params[:page])
    @patients_removed_from_waiting_list = @q.result.not_waiting_list.page(params[:page])
    @waiting_for_patient_return = @q.result.waiting_for_patient_return.page(params[:page])
  end
  # GET /waiting_lists/1
  def show
  end

  # GET /waiting_lists/new
  def new
    @waiting_list = WaitingList.new(start_date: DateTime.now)
    @waiting_list.patient = Patient.new
    @waiting_list.patient.addresses << Address.new
    @waiting_list.patient.schoolings << Schooling.new
    @waiting_list.patient.contact_informations << ContactInformation.new
    @new_interaction = Interaction.new(interaction_type_id: 1, interaction_object_id: 1, interaction_date: DateTime.now, practitioner: current_user.andand.practitioner)
  end

  # GET /waiting_lists/1/edit
  def edit
  end

  # POST /waiting_lists
  def create
    @waiting_list = WaitingList.new(waiting_list_params)

    if @waiting_list.save
      redirect_to action: :index, notice: 'Waiting list was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /waiting_lists/1
  def update
    params = waiting_list_params
    if params["waiting_for_patient_return"]=="1"
      params["patient_attributes"].delete("therapies_attributes")
    end
    if @waiting_list.update(params)
      redirect_to action: :index, notice: 'Waiting list was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /waiting_lists/1
  def destroy
    @waiting_list.destroy
    redirect_to waiting_lists_url, notice: 'Waiting list was successfully destroyed.'
  end

  def stop_registration
    @waiting_list.end_date = DateTime.now
  end

  def take_care
    @waiting_list.end_date = DateTime.now
    @new_therapy = Therapy.new(begin_date: DateTime.now, practitioner: current_user.andand.practitioner)
    @new_interaction = Interaction.new(interaction_type_id: 1, interaction_object_id: 3, interaction_date: DateTime.now, practitioner: current_user.andand.practitioner)
  end

  def add_interaction  
    @new_interaction = Interaction.new(interaction_type_id: 1, interaction_object_id: 2, interaction_date: DateTime.now, practitioner: current_user.andand.practitioner)
  end

  def patient_never_return
    @waiting_list.end_date = DateTime.now
    @waiting_list.waiting_for_patient_return = false
    @waiting_list.comments = "Le patient n'a jamais rappelé. " + @waiting_list.comments.to_s
    render :stop_registration
  end

  def care_confirm
    @waiting_list.end_date = DateTime.now
    @waiting_list.waiting_for_patient_return = false
    @waiting_list.comments = "Prise en charge confirmée. " + @waiting_list.comments.to_s
    @new_therapy = Therapy.new(begin_date: DateTime.now, practitioner: current_user.andand.practitioner)
    @new_interaction = Interaction.new(interaction_type_id: 1, interaction_object_id: 4, interaction_date: DateTime.now, practitioner: current_user.andand.practitioner)
    render :take_care
  end

  def reregister_on_waiting_list

  end

  def availability_not_compatible
    @waiting_list.end_date = nil
    @waiting_list.waiting_for_patient_return = false
    @waiting_list.comments = "Horaires non compatibles. " + @waiting_list.comments.to_s
    render :reregister_on_waiting_list
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_waiting_list
      @waiting_list = WaitingList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def waiting_list_params

      params.require(:waiting_list).permit(:patient_id, :health_place_id, :start_date, :end_date, :pathology_id, :comments, :waiting_for_patient_return,
                                          patient_attributes: [:id, :last_name, :first_name, :is_male, :birth_date, :birth_place, :priority, :comments, :job,
                                                                contact_informations_attributes: [:id,:value],
                                                                pathology_ids: [], 
                                                                schoolings_attributes: [:id,:school_level_id],
                                                                addresses_attributes: [:id, :city],
                                                                therapies_attributes: [:id, :practitioner_id, :begin_date, :number_of_sessions],
                                                                interactions_attributes: [:id, :practitioner_id, :interaction_date, :interaction_type_id, :interaction_object_id, :comments]
                                                              ]
                                          )

    end
end