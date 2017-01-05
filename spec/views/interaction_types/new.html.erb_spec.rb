require 'rails_helper'

RSpec.describe "interaction_types/new", type: :view do
  before(:each) do
    assign(:interaction_type, InteractionType.new(
      :name => "MyString",
      :glyphicon => "MyString"
    ))
  end

  it "renders new interaction_type form" do
    render

    assert_select "form[action=?][method=?]", interaction_types_path, "post" do

      assert_select "input#interaction_type_name[name=?]", "interaction_type[name]"

      assert_select "input#interaction_type_glyphicon[name=?]", "interaction_type[glyphicon]"
    end
  end
end
