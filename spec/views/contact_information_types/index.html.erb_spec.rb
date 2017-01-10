require 'rails_helper'

RSpec.describe "contact_information_types/index", type: :view do
  before(:each) do
    assign(:contact_information_types, [
      ContactInformationType.create!(
        :name => "Name"
      ),
      ContactInformationType.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of contact_information_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
