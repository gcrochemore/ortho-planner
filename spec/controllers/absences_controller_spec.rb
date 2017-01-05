require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe AbsencesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Absence. As you add validations to Absence, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AbsencesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all absences as @absences" do
      absence = Absence.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:absences)).to eq([absence])
    end
  end

  describe "GET #show" do
    it "assigns the requested absence as @absence" do
      absence = Absence.create! valid_attributes
      get :show, params: {id: absence.to_param}, session: valid_session
      expect(assigns(:absence)).to eq(absence)
    end
  end

  describe "GET #new" do
    it "assigns a new absence as @absence" do
      get :new, params: {}, session: valid_session
      expect(assigns(:absence)).to be_a_new(Absence)
    end
  end

  describe "GET #edit" do
    it "assigns the requested absence as @absence" do
      absence = Absence.create! valid_attributes
      get :edit, params: {id: absence.to_param}, session: valid_session
      expect(assigns(:absence)).to eq(absence)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Absence" do
        expect {
          post :create, params: {absence: valid_attributes}, session: valid_session
        }.to change(Absence, :count).by(1)
      end

      it "assigns a newly created absence as @absence" do
        post :create, params: {absence: valid_attributes}, session: valid_session
        expect(assigns(:absence)).to be_a(Absence)
        expect(assigns(:absence)).to be_persisted
      end

      it "redirects to the created absence" do
        post :create, params: {absence: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Absence.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved absence as @absence" do
        post :create, params: {absence: invalid_attributes}, session: valid_session
        expect(assigns(:absence)).to be_a_new(Absence)
      end

      it "re-renders the 'new' template" do
        post :create, params: {absence: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested absence" do
        absence = Absence.create! valid_attributes
        put :update, params: {id: absence.to_param, absence: new_attributes}, session: valid_session
        absence.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested absence as @absence" do
        absence = Absence.create! valid_attributes
        put :update, params: {id: absence.to_param, absence: valid_attributes}, session: valid_session
        expect(assigns(:absence)).to eq(absence)
      end

      it "redirects to the absence" do
        absence = Absence.create! valid_attributes
        put :update, params: {id: absence.to_param, absence: valid_attributes}, session: valid_session
        expect(response).to redirect_to(absence)
      end
    end

    context "with invalid params" do
      it "assigns the absence as @absence" do
        absence = Absence.create! valid_attributes
        put :update, params: {id: absence.to_param, absence: invalid_attributes}, session: valid_session
        expect(assigns(:absence)).to eq(absence)
      end

      it "re-renders the 'edit' template" do
        absence = Absence.create! valid_attributes
        put :update, params: {id: absence.to_param, absence: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested absence" do
      absence = Absence.create! valid_attributes
      expect {
        delete :destroy, params: {id: absence.to_param}, session: valid_session
      }.to change(Absence, :count).by(-1)
    end

    it "redirects to the absences list" do
      absence = Absence.create! valid_attributes
      delete :destroy, params: {id: absence.to_param}, session: valid_session
      expect(response).to redirect_to(absences_url)
    end
  end

end
