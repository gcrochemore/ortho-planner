require 'rails_helper'

RSpec.describe "absences/edit", type: :view do
  before(:each) do
    @absence = assign(:absence, Absence.create!(
      :patient => nil
    ))
  end

  it "renders the edit absence form" do
    render

    assert_select "form[action=?][method=?]", absence_path(@absence), "post" do

      assert_select "input#absence_patient_id[name=?]", "absence[patient_id]"
    end
  end
end
