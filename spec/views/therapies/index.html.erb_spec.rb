require 'rails_helper'

RSpec.describe "therapies/index", type: :view do
  before(:each) do
    assign(:therapies, [
      Therapy.create!(
        :practitioner => nil,
        :patient => nil,
        :health_place => nil,
        :number_of_sessions => 2,
        :session_duration => 3,
        :act => nil
      ),
      Therapy.create!(
        :practitioner => nil,
        :patient => nil,
        :health_place => nil,
        :number_of_sessions => 2,
        :session_duration => 3,
        :act => nil
      )
    ])
  end

  it "renders a list of therapies" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
