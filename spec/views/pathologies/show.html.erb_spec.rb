require 'rails_helper'

RSpec.describe "pathologies/show", type: :view do
  before(:each) do
    @pathology = assign(:pathology, Pathology.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
