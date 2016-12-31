require 'rails_helper'

RSpec.describe "sessions/new", type: :view do
  before(:each) do
    assign(:session, Session.new(
      :therapy => nil,
      :act => nil,
      :practitioner => nil,
      :health_place => nil
    ))
  end

  it "renders new session form" do
    render

    assert_select "form[action=?][method=?]", sessions_path, "post" do

      assert_select "input#session_therapy_id[name=?]", "session[therapy_id]"

      assert_select "input#session_act_id[name=?]", "session[act_id]"

      assert_select "input#session_practitioner_id[name=?]", "session[practitioner_id]"

      assert_select "input#session_health_place_id[name=?]", "session[health_place_id]"
    end
  end
end
