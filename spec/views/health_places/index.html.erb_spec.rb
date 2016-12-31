require 'rails_helper'

RSpec.describe "health_places/index", type: :view do
  before(:each) do
    assign(:health_places, [
      HealthPlace.create!(
        :name => "Name",
        :health_place_type => nil
      ),
      HealthPlace.create!(
        :name => "Name",
        :health_place_type => nil
      )
    ])
  end

  it "renders a list of health_places" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
