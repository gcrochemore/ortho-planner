require 'rails_helper'

RSpec.describe "school_levels/show", type: :view do
  before(:each) do
    @school_level = assign(:school_level, SchoolLevel.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
