require 'rails_helper'

RSpec.describe "schoolings/index", type: :view do
  before(:each) do
    assign(:schoolings, [
      Schooling.create!(
        :patient => nil,
        :school => nil,
        :school_level => nil,
        :school_year => nil
      ),
      Schooling.create!(
        :patient => nil,
        :school => nil,
        :school_level => nil,
        :school_year => nil
      )
    ])
  end

  it "renders a list of schoolings" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
