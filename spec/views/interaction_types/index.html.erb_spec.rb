require 'rails_helper'

RSpec.describe "interaction_types/index", type: :view do
  before(:each) do
    assign(:interaction_types, [
      InteractionType.create!(
        :name => "Name",
        :glyphicon => "Glyphicon"
      ),
      InteractionType.create!(
        :name => "Name",
        :glyphicon => "Glyphicon"
      )
    ])
  end

  it "renders a list of interaction_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Glyphicon".to_s, :count => 2
  end
end
