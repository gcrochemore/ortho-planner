require 'rails_helper'

RSpec.describe "waiting_lists/show", type: :view do
  before(:each) do
    @waiting_list = assign(:waiting_list, WaitingList.create!(
      :patient => nil,
      :health_place => nil,
      :pathology => nil,
      :comments => "MyText",
      :waiting_for_patient_return => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
