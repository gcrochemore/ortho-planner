require 'rails_helper'

RSpec.describe "school_levels/index", type: :view do
  before(:each) do
    assign(:school_levels, [
      SchoolLevel.create!(
        :name => "Name"
      ),
      SchoolLevel.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of school_levels" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
