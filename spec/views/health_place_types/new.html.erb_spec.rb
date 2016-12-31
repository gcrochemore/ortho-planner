require 'rails_helper'

RSpec.describe "health_place_types/new", type: :view do
  before(:each) do
    assign(:health_place_type, HealthPlaceType.new(
      :name => "MyString"
    ))
  end

  it "renders new health_place_type form" do
    render

    assert_select "form[action=?][method=?]", health_place_types_path, "post" do

      assert_select "input#health_place_type_name[name=?]", "health_place_type[name]"
    end
  end
end
