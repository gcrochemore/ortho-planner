require 'rails_helper'

RSpec.describe "waiting_lists/new", type: :view do
  before(:each) do
    assign(:waiting_list, WaitingList.new(
      :patient => nil,
      :health_place => nil,
      :pathology => nil,
      :comments => "MyText",
      :waiting_for_patient_return => false
    ))
  end

  it "renders new waiting_list form" do
    render

    assert_select "form[action=?][method=?]", waiting_lists_path, "post" do

      assert_select "input#waiting_list_patient_id[name=?]", "waiting_list[patient_id]"

      assert_select "input#waiting_list_health_place_id[name=?]", "waiting_list[health_place_id]"

      assert_select "input#waiting_list_pathology_id[name=?]", "waiting_list[pathology_id]"

      assert_select "textarea#waiting_list_comments[name=?]", "waiting_list[comments]"

      assert_select "input#waiting_list_waiting_for_patient_return[name=?]", "waiting_list[waiting_for_patient_return]"
    end
  end
end
