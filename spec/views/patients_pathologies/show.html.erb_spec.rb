require 'rails_helper'

RSpec.describe "patients_pathologies/show", type: :view do
  before(:each) do
    @patients_pathology = assign(:patients_pathology, PatientsPathology.create!(
      :patient => nil,
      :pathology => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
