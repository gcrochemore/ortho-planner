require 'rails_helper'

RSpec.describe "versions/new", type: :view do
  before(:each) do
    assign(:version, Version.new(
      :item_type => "MyString",
      :item_id => 1,
      :event => "MyString",
      :whodunnit => "MyString",
      :object => "MyText"
    ))
  end

  it "renders new version form" do
    render

    assert_select "form[action=?][method=?]", versions_path, "post" do

      assert_select "input#version_item_type[name=?]", "version[item_type]"

      assert_select "input#version_item_id[name=?]", "version[item_id]"

      assert_select "input#version_event[name=?]", "version[event]"

      assert_select "input#version_whodunnit[name=?]", "version[whodunnit]"

      assert_select "textarea#version_object[name=?]", "version[object]"
    end
  end
end
