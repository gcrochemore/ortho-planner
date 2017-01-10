require 'rails_helper'

RSpec.describe "contact_information_types/new", type: :view do
  before(:each) do
    assign(:contact_information_type, ContactInformationType.new(
      :name => "MyString"
    ))
  end

  it "renders new contact_information_type form" do
    render

    assert_select "form[action=?][method=?]", contact_information_types_path, "post" do

      assert_select "input#contact_information_type_name[name=?]", "contact_information_type[name]"
    end
  end
end
