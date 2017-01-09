require "rails_helper"

RSpec.describe SchoolLevelsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/school_levels").to route_to("school_levels#index")
    end

    it "routes to #new" do
      expect(:get => "/school_levels/new").to route_to("school_levels#new")
    end

    it "routes to #show" do
      expect(:get => "/school_levels/1").to route_to("school_levels#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/school_levels/1/edit").to route_to("school_levels#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/school_levels").to route_to("school_levels#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/school_levels/1").to route_to("school_levels#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/school_levels/1").to route_to("school_levels#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/school_levels/1").to route_to("school_levels#destroy", :id => "1")
    end

  end
end
