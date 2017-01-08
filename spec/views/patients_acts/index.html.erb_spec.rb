require 'rails_helper'

RSpec.describe "patients_acts/index", type: :view do
  before(:each) do
    assign(:patients_acts, [
      PatientsAct.create!(
        :patient => nil,
        :act => nil
      ),
      PatientsAct.create!(
        :patient => nil,
        :act => nil
      )
    ])
  end

  it "renders a list of patients_acts" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
