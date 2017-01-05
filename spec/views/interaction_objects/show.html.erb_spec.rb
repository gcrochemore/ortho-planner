require 'rails_helper'

RSpec.describe "interaction_objects/show", type: :view do
  before(:each) do
    @interaction_object = assign(:interaction_object, InteractionObject.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
