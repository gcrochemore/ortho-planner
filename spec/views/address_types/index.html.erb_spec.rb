require 'rails_helper'

RSpec.describe "address_types/index", type: :view do
  before(:each) do
    assign(:address_types, [
      AddressType.create!(
        :name => "Name"
      ),
      AddressType.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of address_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
