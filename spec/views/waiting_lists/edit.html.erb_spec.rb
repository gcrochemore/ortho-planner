require 'rails_helper'

RSpec.describe "waiting_lists/edit", type: :view do
  before(:each) do
    @waiting_list = assign(:waiting_list, WaitingList.create!(
      :patient => nil,
      :health_place => nil,
      :pathology => nil,
      :comments => "MyText",
      :waiting_for_patient_return => false
    ))
  end

  it "renders the edit waiting_list form" do
    render

    assert_select "form[action=?][method=?]", waiting_list_path(@waiting_list), "post" do

      assert_select "input#waiting_list_patient_id[name=?]", "waiting_list[patient_id]"

      assert_select "input#waiting_list_health_place_id[name=?]", "waiting_list[health_place_id]"

      assert_select "input#waiting_list_pathology_id[name=?]", "waiting_list[pathology_id]"

      assert_select "textarea#waiting_list_comments[name=?]", "waiting_list[comments]"

      assert_select "input#waiting_list_waiting_for_patient_return[name=?]", "waiting_list[waiting_for_patient_return]"
    end
  end
end
