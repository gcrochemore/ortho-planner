require 'rails_helper'

RSpec.describe "absences/index", type: :view do
  before(:each) do
    assign(:absences, [
      Absence.create!(
        :patient => nil
      ),
      Absence.create!(
        :patient => nil
      )
    ])
  end

  it "renders a list of absences" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
