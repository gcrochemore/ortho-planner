require 'rails_helper'

RSpec.describe "contact_information_types/edit", type: :view do
  before(:each) do
    @contact_information_type = assign(:contact_information_type, ContactInformationType.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit contact_information_type form" do
    render

    assert_select "form[action=?][method=?]", contact_information_type_path(@contact_information_type), "post" do

      assert_select "input#contact_information_type_name[name=?]", "contact_information_type[name]"
    end
  end
end
