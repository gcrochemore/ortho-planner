require 'rails_helper'

RSpec.describe "versions/index", type: :view do
  before(:each) do
    assign(:versions, [
      Version.create!(
        :item_type => "Item Type",
        :item_id => 2,
        :event => "Event",
        :whodunnit => "Whodunnit",
        :object => "MyText"
      ),
      Version.create!(
        :item_type => "Item Type",
        :item_id => 2,
        :event => "Event",
        :whodunnit => "Whodunnit",
        :object => "MyText"
      )
    ])
  end

  it "renders a list of versions" do
    render
    assert_select "tr>td", :text => "Item Type".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Event".to_s, :count => 2
    assert_select "tr>td", :text => "Whodunnit".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
