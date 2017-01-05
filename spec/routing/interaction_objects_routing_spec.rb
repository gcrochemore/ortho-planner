require "rails_helper"

RSpec.describe InteractionObjectsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/interaction_objects").to route_to("interaction_objects#index")
    end

    it "routes to #new" do
      expect(:get => "/interaction_objects/new").to route_to("interaction_objects#new")
    end

    it "routes to #show" do
      expect(:get => "/interaction_objects/1").to route_to("interaction_objects#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/interaction_objects/1/edit").to route_to("interaction_objects#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/interaction_objects").to route_to("interaction_objects#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/interaction_objects/1").to route_to("interaction_objects#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/interaction_objects/1").to route_to("interaction_objects#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/interaction_objects/1").to route_to("interaction_objects#destroy", :id => "1")
    end

  end
end
