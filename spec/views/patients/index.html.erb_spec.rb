require 'rails_helper'

RSpec.describe "patients/index", type: :view do
  before(:each) do
    assign(:patients, [
      Patient.create!(
        :last_name => "Last Name",
        :first_name => "First Name",
        :birth_place => "Birth Place",
        :phone_number => "Phone Number"
      ),
      Patient.create!(
        :last_name => "Last Name",
        :first_name => "First Name",
        :birth_place => "Birth Place",
        :phone_number => "Phone Number"
      )
    ])
  end

  it "renders a list of patients" do
    render
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Birth Place".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
  end
end
