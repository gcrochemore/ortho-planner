require 'rails_helper'

RSpec.describe "contact_informations/index", type: :view do
  before(:each) do
    assign(:contact_informations, [
      ContactInformation.create!(
        :contactable => nil,
        :contact_information_type => nil,
        :value => "Value"
      ),
      ContactInformation.create!(
        :contactable => nil,
        :contact_information_type => nil,
        :value => "Value"
      )
    ])
  end

  it "renders a list of contact_informations" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Value".to_s, :count => 2
  end
end
