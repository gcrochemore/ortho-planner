require 'rails_helper'

RSpec.describe "waiting_lists/index", type: :view do
  before(:each) do
    assign(:waiting_lists, [
      WaitingList.create!(
        :patient => nil,
        :office => nil,
        :pathology => nil,
        :comments => "Comments"
      ),
      WaitingList.create!(
        :patient => nil,
        :office => nil,
        :pathology => nil,
        :comments => "Comments"
      )
    ])
  end

  it "renders a list of waiting_lists" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Comments".to_s, :count => 2
  end
end
