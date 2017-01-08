require 'rails_helper'

RSpec.describe "interactions/index", type: :view do
  before(:each) do
    assign(:interactions, [
      Interaction.create!(
        :patient => nil,
        :interaction_object => nil,
        :interaction_type => nil,
        :comments => "MyText"
      ),
      Interaction.create!(
        :patient => nil,
        :interaction_object => nil,
        :interaction_type => nil,
        :comments => "MyText"
      )
    ])
  end

  it "renders a list of interactions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
