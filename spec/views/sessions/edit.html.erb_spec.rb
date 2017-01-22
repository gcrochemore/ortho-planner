require 'rails_helper'

RSpec.describe "sessions/edit", type: :view do
  before(:each) do
    @session = assign(:session, Session.create!(
      :therapy => nil,
      :patient => nil,
      :act => nil,
      :practitioner => nil,
      :health_place => nil
    ))
  end

  it "renders the edit session form" do
    render

    assert_select "form[action=?][method=?]", session_path(@session), "post" do

      assert_select "input#session_therapy_id[name=?]", "session[therapy_id]"

      assert_select "input#session_patient_id[name=?]", "session[patient_id]"

      assert_select "input#session_act_id[name=?]", "session[act_id]"

      assert_select "input#session_practitioner_id[name=?]", "session[practitioner_id]"

      assert_select "input#session_health_place_id[name=?]", "session[health_place_id]"
    end
  end
end
