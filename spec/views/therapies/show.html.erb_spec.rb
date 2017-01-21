require 'rails_helper'

RSpec.describe "therapies/show", type: :view do
  before(:each) do
    @therapy = assign(:therapy, Therapy.create!(
      :practitioner => nil,
      :patient => nil,
      :health_place => nil,
      :number_of_sessions => 2,
      :session_duration => 3,
      :act => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
  end
end
