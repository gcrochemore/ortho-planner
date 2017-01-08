require 'rails_helper'

RSpec.describe "patients_acts/new", type: :view do
  before(:each) do
    assign(:patients_act, PatientsAct.new(
      :patient => nil,
      :act => nil
    ))
  end

  it "renders new patients_act form" do
    render

    assert_select "form[action=?][method=?]", patients_acts_path, "post" do

      assert_select "input#patients_act_patient_id[name=?]", "patients_act[patient_id]"

      assert_select "input#patients_act_act_id[name=?]", "patients_act[act_id]"
    end
  end
end
