require "rails_helper"

RSpec.describe ContactInformationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/contact_informations").to route_to("contact_informations#index")
    end

    it "routes to #new" do
      expect(:get => "/contact_informations/new").to route_to("contact_informations#new")
    end

    it "routes to #show" do
      expect(:get => "/contact_informations/1").to route_to("contact_informations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/contact_informations/1/edit").to route_to("contact_informations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/contact_informations").to route_to("contact_informations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/contact_informations/1").to route_to("contact_informations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/contact_informations/1").to route_to("contact_informations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/contact_informations/1").to route_to("contact_informations#destroy", :id => "1")
    end

  end
end
