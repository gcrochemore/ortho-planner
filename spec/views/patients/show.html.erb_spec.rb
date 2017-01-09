require 'rails_helper'

RSpec.describe "patients/show", type: :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
      :last_name => "Last Name",
      :first_name => "First Name",
      :is_male => false,
      :birth_place => "Birth Place",
      :phone_number => "Phone Number",
      :priority => false,
      :comments => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Birth Place/)
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
  end
end
