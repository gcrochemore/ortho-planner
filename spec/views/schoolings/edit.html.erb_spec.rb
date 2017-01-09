require 'rails_helper'

RSpec.describe "schoolings/edit", type: :view do
  before(:each) do
    @schooling = assign(:schooling, Schooling.create!(
      :patient => nil,
      :school => nil,
      :school_level => nil,
      :school_year => nil
    ))
  end

  it "renders the edit schooling form" do
    render

    assert_select "form[action=?][method=?]", schooling_path(@schooling), "post" do

      assert_select "input#schooling_patient_id[name=?]", "schooling[patient_id]"

      assert_select "input#schooling_school_id[name=?]", "schooling[school_id]"

      assert_select "input#schooling_school_level_id[name=?]", "schooling[school_level_id]"

      assert_select "input#schooling_school_year_id[name=?]", "schooling[school_year_id]"
    end
  end
end
