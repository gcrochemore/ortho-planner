require "rails_helper"

RSpec.describe ContactInformationTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/contact_information_types").to route_to("contact_information_types#index")
    end

    it "routes to #new" do
      expect(:get => "/contact_information_types/new").to route_to("contact_information_types#new")
    end

    it "routes to #show" do
      expect(:get => "/contact_information_types/1").to route_to("contact_information_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/contact_information_types/1/edit").to route_to("contact_information_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/contact_information_types").to route_to("contact_information_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/contact_information_types/1").to route_to("contact_information_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/contact_information_types/1").to route_to("contact_information_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/contact_information_types/1").to route_to("contact_information_types#destroy", :id => "1")
    end

  end
end
