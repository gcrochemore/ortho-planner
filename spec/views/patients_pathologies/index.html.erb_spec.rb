require 'rails_helper'

RSpec.describe "patients_pathologies/index", type: :view do
  before(:each) do
    assign(:patients_pathologies, [
      PatientsPathology.create!(
        :patient => nil,
        :pathology => nil
      ),
      PatientsPathology.create!(
        :patient => nil,
        :pathology => nil
      )
    ])
  end

  it "renders a list of patients_pathologies" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
