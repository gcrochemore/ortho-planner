require "rails_helper"

RSpec.describe SchoolTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/school_types").to route_to("school_types#index")
    end

    it "routes to #new" do
      expect(:get => "/school_types/new").to route_to("school_types#new")
    end

    it "routes to #show" do
      expect(:get => "/school_types/1").to route_to("school_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/school_types/1/edit").to route_to("school_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/school_types").to route_to("school_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/school_types/1").to route_to("school_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/school_types/1").to route_to("school_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/school_types/1").to route_to("school_types#destroy", :id => "1")
    end

  end
end
