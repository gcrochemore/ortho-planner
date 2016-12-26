require 'rails_helper'

RSpec.describe "practitioners/new", type: :view do
  before(:each) do
    assign(:practitioner, Practitioner.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :birth_place => "MyString",
      :profession => nil
    ))
  end

  it "renders new practitioner form" do
    render

    assert_select "form[action=?][method=?]", practitioners_path, "post" do

      assert_select "input#practitioner_first_name[name=?]", "practitioner[first_name]"

      assert_select "input#practitioner_last_name[name=?]", "practitioner[last_name]"

      assert_select "input#practitioner_birth_place[name=?]", "practitioner[birth_place]"

      assert_select "input#practitioner_profession_id[name=?]", "practitioner[profession_id]"
    end
  end
end
