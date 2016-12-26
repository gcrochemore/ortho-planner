require 'rails_helper'

RSpec.describe "practitioner_professions/new", type: :view do
  before(:each) do
    assign(:practitioner_profession, PractitionerProfession.new(
      :name => "MyString"
    ))
  end

  it "renders new practitioner_profession form" do
    render

    assert_select "form[action=?][method=?]", practitioner_professions_path, "post" do

      assert_select "input#practitioner_profession_name[name=?]", "practitioner_profession[name]"
    end
  end
end
