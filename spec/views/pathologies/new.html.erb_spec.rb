require 'rails_helper'

RSpec.describe "pathologies/new", type: :view do
  before(:each) do
    assign(:pathology, Pathology.new(
      :name => "MyString"
    ))
  end

  it "renders new pathology form" do
    render

    assert_select "form[action=?][method=?]", pathologies_path, "post" do

      assert_select "input#pathology_name[name=?]", "pathology[name]"
    end
  end
end
