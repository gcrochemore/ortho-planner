require 'rails_helper'

RSpec.describe "practitioner_professions/show", type: :view do
  before(:each) do
    @practitioner_profession = assign(:practitioner_profession, PractitionerProfession.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
