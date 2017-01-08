require 'rails_helper'

RSpec.describe "patients_acts/show", type: :view do
  before(:each) do
    @patients_act = assign(:patients_act, PatientsAct.create!(
      :patient => nil,
      :act => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
