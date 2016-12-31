require 'rails_helper'

RSpec.describe "health_places/edit", type: :view do
  before(:each) do
    @health_place = assign(:health_place, HealthPlace.create!(
      :name => "MyString",
      :HealthPlaceType => nil
    ))
  end

  it "renders the edit health_place form" do
    render

    assert_select "form[action=?][method=?]", health_place_path(@health_place), "post" do

      assert_select "input#health_place_name[name=?]", "health_place[name]"

      assert_select "input#health_place_HealthPlaceType_id[name=?]", "health_place[HealthPlaceType_id]"
    end
  end
end
