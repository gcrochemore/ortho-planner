require 'rails_helper'

RSpec.describe "patients_pathologies/edit", type: :view do
  before(:each) do
    @patients_pathology = assign(:patients_pathology, PatientsPathology.create!(
      :patient => nil,
      :pathology => nil
    ))
  end

  it "renders the edit patients_pathology form" do
    render

    assert_select "form[action=?][method=?]", patients_pathology_path(@patients_pathology), "post" do

      assert_select "input#patients_pathology_patient_id[name=?]", "patients_pathology[patient_id]"

      assert_select "input#patients_pathology_pathology_id[name=?]", "patients_pathology[pathology_id]"
    end
  end
end
