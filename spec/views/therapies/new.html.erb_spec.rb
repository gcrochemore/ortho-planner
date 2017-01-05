require 'rails_helper'

RSpec.describe "therapies/new", type: :view do
  before(:each) do
    assign(:therapy, Therapy.new(
      :practitioner => nil,
      :patient => nil,
      :health_place => nil,
      :number_of_sessions => 1,
      :session_duration => 1
    ))
  end

  it "renders new therapy form" do
    render

    assert_select "form[action=?][method=?]", therapies_path, "post" do

      assert_select "input#therapy_practitioner_id[name=?]", "therapy[practitioner_id]"

      assert_select "input#therapy_patient_id[name=?]", "therapy[patient_id]"

      assert_select "input#therapy_health_place_id[name=?]", "therapy[health_place_id]"

      assert_select "input#therapy_number_of_sessions[name=?]", "therapy[number_of_sessions]"

      assert_select "input#therapy_session_duration[name=?]", "therapy[session_duration]"
    end
  end
end
