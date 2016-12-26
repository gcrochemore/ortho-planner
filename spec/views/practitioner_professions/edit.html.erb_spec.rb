require 'rails_helper'

RSpec.describe "practitioner_professions/edit", type: :view do
  before(:each) do
    @practitioner_profession = assign(:practitioner_profession, PractitionerProfession.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit practitioner_profession form" do
    render

    assert_select "form[action=?][method=?]", practitioner_profession_path(@practitioner_profession), "post" do

      assert_select "input#practitioner_profession_name[name=?]", "practitioner_profession[name]"
    end
  end
end
