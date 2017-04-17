require 'rails_helper'

RSpec.describe "patient_availabilities/new", type: :view do
  before(:each) do
    assign(:patient_availability, PatientAvailability.new(
      :patient => nil,
      :day => 1,
      :period => 1,
      :available => false
    ))
  end

  it "renders new patient_availability form" do
    render

    assert_select "form[action=?][method=?]", patient_availabilities_path, "post" do

      assert_select "input#patient_availability_patient_id[name=?]", "patient_availability[patient_id]"

      assert_select "input#patient_availability_day[name=?]", "patient_availability[day]"

      assert_select "input#patient_availability_period[name=?]", "patient_availability[period]"

      assert_select "input#patient_availability_available[name=?]", "patient_availability[available]"
    end
  end
end
