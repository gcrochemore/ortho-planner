require 'rails_helper'

RSpec.describe "sessions/index", type: :view do
  before(:each) do
    assign(:sessions, [
      Session.create!(
        :therapy => nil,
        :act => nil,
        :practitioner => nil
      ),
      Session.create!(
        :therapy => nil,
        :act => nil,
        :practitioner => nil
      )
    ])
  end

  it "renders a list of sessions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
