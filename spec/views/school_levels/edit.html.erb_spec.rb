require 'rails_helper'

RSpec.describe "school_levels/edit", type: :view do
  before(:each) do
    @school_level = assign(:school_level, SchoolLevel.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit school_level form" do
    render

    assert_select "form[action=?][method=?]", school_level_path(@school_level), "post" do

      assert_select "input#school_level_name[name=?]", "school_level[name]"
    end
  end
end
