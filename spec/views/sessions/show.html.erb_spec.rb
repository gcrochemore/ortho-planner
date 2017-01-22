require 'rails_helper'

RSpec.describe "sessions/show", type: :view do
  before(:each) do
    @session = assign(:session, Session.create!(
      :therapy => nil,
      :patient => nil,
      :act => nil,
      :practitioner => nil,
      :health_place => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
