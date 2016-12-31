require 'rails_helper'

RSpec.describe "health_place_types/index", type: :view do
  before(:each) do
    assign(:health_place_types, [
      HealthPlaceType.create!(
        :name => "Name"
      ),
      HealthPlaceType.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of health_place_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
