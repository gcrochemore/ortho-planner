require 'rails_helper'

RSpec.describe "waiting_lists/edit", type: :view do
  before(:each) do
    @waiting_list = assign(:waiting_list, WaitingList.create!(
      :patient => nil,
      :office => nil,
      :pathology => nil,
      :comments => "MyString"
    ))
  end

  it "renders the edit waiting_list form" do
    render

    assert_select "form[action=?][method=?]", waiting_list_path(@waiting_list), "post" do

      assert_select "input#waiting_list_patient_id[name=?]", "waiting_list[patient_id]"

      assert_select "input#waiting_list_office_id[name=?]", "waiting_list[office_id]"

      assert_select "input#waiting_list_pathology_id[name=?]", "waiting_list[pathology_id]"

      assert_select "input#waiting_list_comments[name=?]", "waiting_list[comments]"
    end
  end
end
