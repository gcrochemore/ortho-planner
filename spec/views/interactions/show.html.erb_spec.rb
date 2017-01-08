require 'rails_helper'

RSpec.describe "interactions/show", type: :view do
  before(:each) do
    @interaction = assign(:interaction, Interaction.create!(
      :patient => nil,
      :interaction_object => nil,
      :interaction_type => nil,
      :comments => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
