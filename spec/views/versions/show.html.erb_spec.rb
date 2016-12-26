require 'rails_helper'

RSpec.describe "versions/show", type: :view do
  before(:each) do
    @version = assign(:version, Version.create!(
      :item_type => "Item Type",
      :item_id => 2,
      :event => "Event",
      :whodunnit => "Whodunnit",
      :object => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Item Type/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Event/)
    expect(rendered).to match(/Whodunnit/)
    expect(rendered).to match(/MyText/)
  end
end
