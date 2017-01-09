require 'rails_helper'

RSpec.describe "school_years/show", type: :view do
  before(:each) do
    @school_year = assign(:school_year, SchoolYear.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
