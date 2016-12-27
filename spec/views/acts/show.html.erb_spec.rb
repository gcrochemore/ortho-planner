require 'rails_helper'

RSpec.describe "acts/show", type: :view do
  before(:each) do
    @act = assign(:act, Act.create!(
      :name => "Name",
      :AMO => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
  end
end
