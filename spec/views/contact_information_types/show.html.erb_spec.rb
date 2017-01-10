require 'rails_helper'

RSpec.describe "contact_information_types/show", type: :view do
  before(:each) do
    @contact_information_type = assign(:contact_information_type, ContactInformationType.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
