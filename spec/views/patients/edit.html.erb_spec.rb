require 'rails_helper'

RSpec.describe "patients/edit", type: :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
      :last_name => "MyString",
      :first_name => "MyString",
      :is_male => false,
      :birth_place => "MyString",
      :priority => false,
      :comments => "MyText",
      :job => "MyString"
    ))
  end

  it "renders the edit patient form" do
    render

    assert_select "form[action=?][method=?]", patient_path(@patient), "post" do

      assert_select "input#patient_last_name[name=?]", "patient[last_name]"

      assert_select "input#patient_first_name[name=?]", "patient[first_name]"

      assert_select "input#patient_is_male[name=?]", "patient[is_male]"

      assert_select "input#patient_birth_place[name=?]", "patient[birth_place]"

      assert_select "input#patient_priority[name=?]", "patient[priority]"

      assert_select "textarea#patient_comments[name=?]", "patient[comments]"

      assert_select "input#patient_job[name=?]", "patient[job]"
    end
  end
end
