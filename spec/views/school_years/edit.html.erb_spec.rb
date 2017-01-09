require 'rails_helper'

RSpec.describe "school_years/edit", type: :view do
  before(:each) do
    @school_year = assign(:school_year, SchoolYear.create!())
  end

  it "renders the edit school_year form" do
    render

    assert_select "form[action=?][method=?]", school_year_path(@school_year), "post" do
    end
  end
end
