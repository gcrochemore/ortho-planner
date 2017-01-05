require 'rails_helper'

RSpec.describe "absences/show", type: :view do
  before(:each) do
    @absence = assign(:absence, Absence.create!(
      :patient => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
