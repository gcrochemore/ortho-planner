require 'rails_helper'

RSpec.describe "interaction_objects/index", type: :view do
  before(:each) do
    assign(:interaction_objects, [
      InteractionObject.create!(
        :name => "Name"
      ),
      InteractionObject.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of interaction_objects" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
