require 'rails_helper'

RSpec.describe "patients_acts/edit", type: :view do
  before(:each) do
    @patients_act = assign(:patients_act, PatientsAct.create!(
      :patient => nil,
      :act => nil
    ))
  end

  it "renders the edit patients_act form" do
    render

    assert_select "form[action=?][method=?]", patients_act_path(@patients_act), "post" do

      assert_select "input#patients_act_patient_id[name=?]", "patients_act[patient_id]"

      assert_select "input#patients_act_act_id[name=?]", "patients_act[act_id]"
    end
  end
end
