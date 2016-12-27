require "rails_helper"

RSpec.describe PathologiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pathologies").to route_to("pathologies#index")
    end

    it "routes to #new" do
      expect(:get => "/pathologies/new").to route_to("pathologies#new")
    end

    it "routes to #show" do
      expect(:get => "/pathologies/1").to route_to("pathologies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pathologies/1/edit").to route_to("pathologies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pathologies").to route_to("pathologies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/pathologies/1").to route_to("pathologies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/pathologies/1").to route_to("pathologies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pathologies/1").to route_to("pathologies#destroy", :id => "1")
    end

  end
end
