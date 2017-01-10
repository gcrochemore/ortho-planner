require 'rails_helper'

RSpec.describe "contact_informations/show", type: :view do
  before(:each) do
    @contact_information = assign(:contact_information, ContactInformation.create!(
      :contactable => nil,
      :contact_information_type => nil,
      :value => "Value"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Value/)
  end
end
