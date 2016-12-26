require 'rails_helper'

RSpec.describe "practitioners/index", type: :view do
  before(:each) do
    assign(:practitioners, [
      Practitioner.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :birth_place => "Birth Place",
        :profession => nil
      ),
      Practitioner.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :birth_place => "Birth Place",
        :profession => nil
      )
    ])
  end

  it "renders a list of practitioners" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Birth Place".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
