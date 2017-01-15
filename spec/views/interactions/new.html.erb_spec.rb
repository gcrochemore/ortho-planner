require 'rails_helper'

RSpec.describe "interactions/new", type: :view do
  before(:each) do
    assign(:interaction, Interaction.new(
      :patient => nil,
      :practitioner => nil,
      :interaction_object => nil,
      :interaction_type => nil,
      :comments => "MyText"
    ))
  end

  it "renders new interaction form" do
    render

    assert_select "form[action=?][method=?]", interactions_path, "post" do

      assert_select "input#interaction_patient_id[name=?]", "interaction[patient_id]"

      assert_select "input#interaction_practitioner_id[name=?]", "interaction[practitioner_id]"

      assert_select "input#interaction_interaction_object_id[name=?]", "interaction[interaction_object_id]"

      assert_select "input#interaction_interaction_type_id[name=?]", "interaction[interaction_type_id]"

      assert_select "textarea#interaction_comments[name=?]", "interaction[comments]"
    end
  end
end
