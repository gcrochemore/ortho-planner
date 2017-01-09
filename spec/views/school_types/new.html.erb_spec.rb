require 'rails_helper'

RSpec.describe "school_types/new", type: :view do
  before(:each) do
    assign(:school_type, SchoolType.new(
      :name => "MyString"
    ))
  end

  it "renders new school_type form" do
    render

    assert_select "form[action=?][method=?]", school_types_path, "post" do

      assert_select "input#school_type_name[name=?]", "school_type[name]"
    end
  end
end
