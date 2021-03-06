require 'rails_helper'

RSpec.describe "patients/show", type: :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
      :last_name => "Last Name",
      :first_name => "First Name",
      :is_male => false,
      :birth_place => "Birth Place",
      :priority => false,
      :comments => "MyText",
      :job => "Job"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Birth Place/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Job/)
  end
end
