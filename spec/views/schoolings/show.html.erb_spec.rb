require 'rails_helper'

RSpec.describe "schoolings/show", type: :view do
  before(:each) do
    @schooling = assign(:schooling, Schooling.create!(
      :patient => nil,
      :school => nil,
      :school_level => nil,
      :school_year => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
