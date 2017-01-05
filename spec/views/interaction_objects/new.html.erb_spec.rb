require 'rails_helper'

RSpec.describe "interaction_objects/new", type: :view do
  before(:each) do
    assign(:interaction_object, InteractionObject.new(
      :name => "MyString"
    ))
  end

  it "renders new interaction_object form" do
    render

    assert_select "form[action=?][method=?]", interaction_objects_path, "post" do

      assert_select "input#interaction_object_name[name=?]", "interaction_object[name]"
    end
  end
end
