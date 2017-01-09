require 'rails_helper'

RSpec.describe "school_types/edit", type: :view do
  before(:each) do
    @school_type = assign(:school_type, SchoolType.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit school_type form" do
    render

    assert_select "form[action=?][method=?]", school_type_path(@school_type), "post" do

      assert_select "input#school_type_name[name=?]", "school_type[name]"
    end
  end
end
