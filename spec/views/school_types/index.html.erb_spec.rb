require 'rails_helper'

RSpec.describe "school_types/index", type: :view do
  before(:each) do
    assign(:school_types, [
      SchoolType.create!(
        :name => "Name"
      ),
      SchoolType.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of school_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
