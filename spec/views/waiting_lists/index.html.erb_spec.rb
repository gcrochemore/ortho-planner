require 'rails_helper'

RSpec.describe "waiting_lists/index", type: :view do
  before(:each) do
    assign(:waiting_lists, [
      WaitingList.create!(
        :patient => nil,
        :health_place => nil,
        :pathology => nil,
        :comments => "MyText",
        :waiting_for_patient_return => false
      ),
      WaitingList.create!(
        :patient => nil,
        :health_place => nil,
        :pathology => nil,
        :comments => "MyText",
        :waiting_for_patient_return => false
      )
    ])
  end

  it "renders a list of waiting_lists" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
