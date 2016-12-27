require 'rails_helper'

RSpec.describe "therapies/show", type: :view do
  before(:each) do
    @therapy = assign(:therapy, Therapy.create!(
      :practitioner => nil,
      :patient => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
