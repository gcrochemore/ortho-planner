require 'rails_helper'

RSpec.describe "addresses/index", type: :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
        :name => "Name",
        :street_number => 2,
        :street_name => "Street Name",
        :postal_code => "Postal Code",
        :city => "City",
        :latitude => 3.5,
        :longitude => 4.5,
        :addressable => nil,
        :address_type => nil
      ),
      Address.create!(
        :name => "Name",
        :street_number => 2,
        :street_name => "Street Name",
        :postal_code => "Postal Code",
        :city => "City",
        :latitude => 3.5,
        :longitude => 4.5,
        :addressable => nil,
        :address_type => nil
      )
    ])
  end

  it "renders a list of addresses" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Street Name".to_s, :count => 2
    assert_select "tr>td", :text => "Postal Code".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
