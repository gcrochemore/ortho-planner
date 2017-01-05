require 'rails_helper'

RSpec.describe "interaction_objects/edit", type: :view do
  before(:each) do
    @interaction_object = assign(:interaction_object, InteractionObject.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit interaction_object form" do
    render

    assert_select "form[action=?][method=?]", interaction_object_path(@interaction_object), "post" do

      assert_select "input#interaction_object_name[name=?]", "interaction_object[name]"
    end
  end
end
