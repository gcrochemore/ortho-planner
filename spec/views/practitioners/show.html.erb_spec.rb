require 'rails_helper'

RSpec.describe "practitioners/show", type: :view do
  before(:each) do
    @practitioner = assign(:practitioner, Practitioner.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :birth_place => "Birth Place",
      :practitioner_profession => nil,
      :health_place => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Birth Place/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
