require "rails_helper"

RSpec.describe HealthPlaceTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/health_place_types").to route_to("health_place_types#index")
    end

    it "routes to #new" do
      expect(:get => "/health_place_types/new").to route_to("health_place_types#new")
    end

    it "routes to #show" do
      expect(:get => "/health_place_types/1").to route_to("health_place_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/health_place_types/1/edit").to route_to("health_place_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/health_place_types").to route_to("health_place_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/health_place_types/1").to route_to("health_place_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/health_place_types/1").to route_to("health_place_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/health_place_types/1").to route_to("health_place_types#destroy", :id => "1")
    end

  end
end
