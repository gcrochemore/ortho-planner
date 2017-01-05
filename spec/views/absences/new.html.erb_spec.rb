require 'rails_helper'

RSpec.describe "absences/new", type: :view do
  before(:each) do
    assign(:absence, Absence.new(
      :patient => nil
    ))
  end

  it "renders new absence form" do
    render

    assert_select "form[action=?][method=?]", absences_path, "post" do

      assert_select "input#absence_patient_id[name=?]", "absence[patient_id]"
    end
  end
end
