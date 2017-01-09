require 'rails_helper'

RSpec.describe "schoolings/new", type: :view do
  before(:each) do
    assign(:schooling, Schooling.new(
      :patient => nil,
      :school => nil,
      :school_level => nil,
      :school_year => nil
    ))
  end

  it "renders new schooling form" do
    render

    assert_select "form[action=?][method=?]", schoolings_path, "post" do

      assert_select "input#schooling_patient_id[name=?]", "schooling[patient_id]"

      assert_select "input#schooling_school_id[name=?]", "schooling[school_id]"

      assert_select "input#schooling_school_level_id[name=?]", "schooling[school_level_id]"

      assert_select "input#schooling_school_year_id[name=?]", "schooling[school_year_id]"
    end
  end
end
