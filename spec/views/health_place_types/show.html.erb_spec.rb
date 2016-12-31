require 'rails_helper'

RSpec.describe "health_place_types/show", type: :view do
  before(:each) do
    @health_place_type = assign(:health_place_type, HealthPlaceType.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
