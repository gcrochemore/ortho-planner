require 'rails_helper'

RSpec.describe "patient_availabilities/index", type: :view do
  before(:each) do
    assign(:patient_availabilities, [
      PatientAvailability.create!(
        :patient => nil,
        :day => 2,
        :period => 3,
        :available => false
      ),
      PatientAvailability.create!(
        :patient => nil,
        :day => 2,
        :period => 3,
        :available => false
      )
    ])
  end

  it "renders a list of patient_availabilities" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
