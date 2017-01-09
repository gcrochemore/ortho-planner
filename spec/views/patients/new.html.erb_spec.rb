require 'rails_helper'

RSpec.describe "patients/new", type: :view do
  before(:each) do
    assign(:patient, Patient.new(
      :last_name => "MyString",
      :first_name => "MyString",
      :is_male => false,
      :birth_place => "MyString",
      :phone_number => "MyString",
      :priority => false,
      :comments => "MyText"
    ))
  end

  it "renders new patient form" do
    render

    assert_select "form[action=?][method=?]", patients_path, "post" do

      assert_select "input#patient_last_name[name=?]", "patient[last_name]"

      assert_select "input#patient_first_name[name=?]", "patient[first_name]"

      assert_select "input#patient_is_male[name=?]", "patient[is_male]"

      assert_select "input#patient_birth_place[name=?]", "patient[birth_place]"

      assert_select "input#patient_phone_number[name=?]", "patient[phone_number]"

      assert_select "input#patient_priority[name=?]", "patient[priority]"

      assert_select "textarea#patient_comments[name=?]", "patient[comments]"
    end
  end
end
