require 'rails_helper'

RSpec.describe "patients/edit", type: :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
      :last_name => "MyString",
      :first_name => "MyString",
      :birth_place => "MyString",
      :phone_number => "MyString"
    ))
  end

  it "renders the edit patient form" do
    render

    assert_select "form[action=?][method=?]", patient_path(@patient), "post" do

      assert_select "input#patient_last_name[name=?]", "patient[last_name]"

      assert_select "input#patient_first_name[name=?]", "patient[first_name]"

      assert_select "input#patient_birth_place[name=?]", "patient[birth_place]"

      assert_select "input#patient_phone_number[name=?]", "patient[phone_number]"
    end
  end
end
