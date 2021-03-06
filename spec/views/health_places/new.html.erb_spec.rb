require 'rails_helper'

RSpec.describe "health_places/new", type: :view do
  before(:each) do
    assign(:health_place, HealthPlace.new(
      :name => "MyString",
      :health_place_type => nil
    ))
  end

  it "renders new health_place form" do
    render

    assert_select "form[action=?][method=?]", health_places_path, "post" do

      assert_select "input#health_place_name[name=?]", "health_place[name]"

      assert_select "input#health_place_health_place_type_id[name=?]", "health_place[health_place_type_id]"
    end
  end
end
