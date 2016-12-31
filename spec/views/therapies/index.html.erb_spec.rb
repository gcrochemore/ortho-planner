require 'rails_helper'

RSpec.describe "therapies/index", type: :view do
  before(:each) do
    assign(:therapies, [
      Therapy.create!(
        :practitioner => nil,
        :patient => nil,
        :health_place => nil
      ),
      Therapy.create!(
        :practitioner => nil,
        :patient => nil,
        :health_place => nil
      )
    ])
  end

  it "renders a list of therapies" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
