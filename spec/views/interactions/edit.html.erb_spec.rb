require 'rails_helper'

RSpec.describe "interactions/edit", type: :view do
  before(:each) do
    @interaction = assign(:interaction, Interaction.create!(
      :patient => nil,
      :interaction_object => nil,
      :interaction_type => nil,
      :comments => "MyText"
    ))
  end

  it "renders the edit interaction form" do
    render

    assert_select "form[action=?][method=?]", interaction_path(@interaction), "post" do

      assert_select "input#interaction_patient_id[name=?]", "interaction[patient_id]"

      assert_select "input#interaction_interaction_object_id[name=?]", "interaction[interaction_object_id]"

      assert_select "input#interaction_interaction_type_id[name=?]", "interaction[interaction_type_id]"

      assert_select "textarea#interaction_comments[name=?]", "interaction[comments]"
    end
  end
end
