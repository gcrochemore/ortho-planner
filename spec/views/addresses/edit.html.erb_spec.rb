require 'rails_helper'

RSpec.describe "addresses/edit", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :name => "MyString",
      :street_number => 1,
      :street_name => "MyString",
      :postal_code => "MyString",
      :city => "MyString",
      :latitude => 1.5,
      :longitude => 1.5,
      :addressable => nil
    ))
  end

  it "renders the edit address form" do
    render

    assert_select "form[action=?][method=?]", address_path(@address), "post" do

      assert_select "input#address_name[name=?]", "address[name]"

      assert_select "input#address_street_number[name=?]", "address[street_number]"

      assert_select "input#address_street_name[name=?]", "address[street_name]"

      assert_select "input#address_postal_code[name=?]", "address[postal_code]"

      assert_select "input#address_city[name=?]", "address[city]"

      assert_select "input#address_latitude[name=?]", "address[latitude]"

      assert_select "input#address_longitude[name=?]", "address[longitude]"

      assert_select "input#address_addressable_id[name=?]", "address[addressable_id]"
    end
  end
end
