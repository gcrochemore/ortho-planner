require 'rails_helper'

RSpec.describe "pathologies/edit", type: :view do
  before(:each) do
    @pathology = assign(:pathology, Pathology.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit pathology form" do
    render

    assert_select "form[action=?][method=?]", pathology_path(@pathology), "post" do

      assert_select "input#pathology_name[name=?]", "pathology[name]"
    end
  end
end
