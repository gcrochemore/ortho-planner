require 'rails_helper'

RSpec.describe "contact_informations/edit", type: :view do
  before(:each) do
    @contact_information = assign(:contact_information, ContactInformation.create!(
      :contactable => nil,
      :contact_information_type => nil,
      :value => "MyString"
    ))
  end

  it "renders the edit contact_information form" do
    render

    assert_select "form[action=?][method=?]", contact_information_path(@contact_information), "post" do

      assert_select "input#contact_information_contactable_id[name=?]", "contact_information[contactable_id]"

      assert_select "input#contact_information_contact_information_type_id[name=?]", "contact_information[contact_information_type_id]"

      assert_select "input#contact_information_value[name=?]", "contact_information[value]"
    end
  end
end
