require 'rails_helper'

RSpec.describe "practitioner_professions/index", type: :view do
  before(:each) do
    assign(:practitioner_professions, [
      PractitionerProfession.create!(
        :name => "Name"
      ),
      PractitionerProfession.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of practitioner_professions" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
