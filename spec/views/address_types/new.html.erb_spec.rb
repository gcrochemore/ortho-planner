require 'rails_helper'

RSpec.describe "address_types/new", type: :view do
  before(:each) do
    assign(:address_type, AddressType.new(
      :name => "MyString"
    ))
  end

  it "renders new address_type form" do
    render

    assert_select "form[action=?][method=?]", address_types_path, "post" do

      assert_select "input#address_type_name[name=?]", "address_type[name]"
    end
  end
end
