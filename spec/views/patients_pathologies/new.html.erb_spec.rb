require 'rails_helper'

RSpec.describe "patients_pathologies/new", type: :view do
  before(:each) do
    assign(:patients_pathology, PatientsPathology.new(
      :patient => nil,
      :pathology => nil
    ))
  end

  it "renders new patients_pathology form" do
    render

    assert_select "form[action=?][method=?]", patients_pathologies_path, "post" do

      assert_select "input#patients_pathology_patient_id[name=?]", "patients_pathology[patient_id]"

      assert_select "input#patients_pathology_pathology_id[name=?]", "patients_pathology[pathology_id]"
    end
  end
end
