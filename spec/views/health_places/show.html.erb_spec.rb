require 'rails_helper'

RSpec.describe "health_places/show", type: :view do
  before(:each) do
    @health_place = assign(:health_place, HealthPlace.create!(
      :name => "Name",
      :health_place_type => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
