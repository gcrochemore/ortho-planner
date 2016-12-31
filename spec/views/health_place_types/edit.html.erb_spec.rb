require 'rails_helper'

RSpec.describe "health_place_types/edit", type: :view do
  before(:each) do
    @health_place_type = assign(:health_place_type, HealthPlaceType.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit health_place_type form" do
    render

    assert_select "form[action=?][method=?]", health_place_type_path(@health_place_type), "post" do

      assert_select "input#health_place_type_name[name=?]", "health_place_type[name]"
    end
  end
end
