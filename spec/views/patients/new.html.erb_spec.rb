require 'rails_helper'

RSpec.describe "patients/new", type: :view do
  before(:each) do
    assign(:patient, Patient.new(
      :last_name => "MyString",
      :first_name => "MyString",
      :birth_place => "MyString",
      :phone_number => "MyString"
    ))
  end

  it "renders new patient form" do
    render

    assert_select "form[action=?][method=?]", patients_path, "post" do

      assert_select "input#patient_last_name[name=?]", "patient[last_name]"

      assert_select "input#patient_first_name[name=?]", "patient[first_name]"

      assert_select "input#patient_birth_place[name=?]", "patient[birth_place]"

      assert_select "input#patient_phone_number[name=?]", "patient[phone_number]"
    end
  end
end
