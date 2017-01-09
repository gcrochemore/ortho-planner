require 'rails_helper'

RSpec.describe "school_years/new", type: :view do
  before(:each) do
    assign(:school_year, SchoolYear.new())
  end

  it "renders new school_year form" do
    render

    assert_select "form[action=?][method=?]", school_years_path, "post" do
    end
  end
end
