require 'rails_helper'

RSpec.describe "interaction_types/show", type: :view do
  before(:each) do
    @interaction_type = assign(:interaction_type, InteractionType.create!(
      :name => "Name",
      :glyphicon => "Glyphicon"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Glyphicon/)
  end
end
