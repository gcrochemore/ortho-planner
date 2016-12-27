require 'rails_helper'

RSpec.describe "pathologies/index", type: :view do
  before(:each) do
    assign(:pathologies, [
      Pathology.create!(
        :name => "Name"
      ),
      Pathology.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of pathologies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
