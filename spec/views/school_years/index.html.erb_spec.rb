require 'rails_helper'

RSpec.describe "school_years/index", type: :view do
  before(:each) do
    assign(:school_years, [
      SchoolYear.create!(),
      SchoolYear.create!()
    ])
  end

  it "renders a list of school_years" do
    render
  end
end
