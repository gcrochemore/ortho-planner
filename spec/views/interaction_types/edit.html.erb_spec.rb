require 'rails_helper'

RSpec.describe "interaction_types/edit", type: :view do
  before(:each) do
    @interaction_type = assign(:interaction_type, InteractionType.create!(
      :name => "MyString",
      :glyphicon => "MyString"
    ))
  end

  it "renders the edit interaction_type form" do
    render

    assert_select "form[action=?][method=?]", interaction_type_path(@interaction_type), "post" do

      assert_select "input#interaction_type_name[name=?]", "interaction_type[name]"

      assert_select "input#interaction_type_glyphicon[name=?]", "interaction_type[glyphicon]"
    end
  end
end
