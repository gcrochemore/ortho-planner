require 'rails_helper'

RSpec.describe "patient_availabilities/show", type: :view do
  before(:each) do
    @patient_availability = assign(:patient_availability, PatientAvailability.create!(
      :patient => nil,
      :day => 2,
      :period => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
