require 'rails_helper'

RSpec.describe "patient_availabilities/edit", type: :view do
  before(:each) do
    @patient_availability = assign(:patient_availability, PatientAvailability.create!(
      :patient => nil,
      :day => 1,
      :period => 1,
      :available => false
    ))
  end

  it "renders the edit patient_availability form" do
    render

    assert_select "form[action=?][method=?]", patient_availability_path(@patient_availability), "post" do

      assert_select "input#patient_availability_patient_id[name=?]", "patient_availability[patient_id]"

      assert_select "input#patient_availability_day[name=?]", "patient_availability[day]"

      assert_select "input#patient_availability_period[name=?]", "patient_availability[period]"

      assert_select "input#patient_availability_available[name=?]", "patient_availability[available]"
    end
  end
end
