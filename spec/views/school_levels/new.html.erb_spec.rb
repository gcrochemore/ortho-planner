require 'rails_helper'

RSpec.describe "school_levels/new", type: :view do
  before(:each) do
    assign(:school_level, SchoolLevel.new(
      :name => "MyString"
    ))
  end

  it "renders new school_level form" do
    render

    assert_select "form[action=?][method=?]", school_levels_path, "post" do

      assert_select "input#school_level_name[name=?]", "school_level[name]"
    end
  end
end
