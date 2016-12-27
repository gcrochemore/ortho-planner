require 'rails_helper'

RSpec.describe "practitioners/edit", type: :view do
  before(:each) do
    @practitioner = assign(:practitioner, Practitioner.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :birth_place => "MyString",
      :practitioner_profession => nil
    ))
  end

  it "renders the edit practitioner form" do
    render

    assert_select "form[action=?][method=?]", practitioner_path(@practitioner), "post" do

      assert_select "input#practitioner_first_name[name=?]", "practitioner[first_name]"

      assert_select "input#practitioner_last_name[name=?]", "practitioner[last_name]"

      assert_select "input#practitioner_birth_place[name=?]", "practitioner[birth_place]"

      assert_select "input#practitioner_practitioner_profession_id[name=?]", "practitioner[practitioner_profession_id]"
    end
  end
end
