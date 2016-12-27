require "rails_helper"

RSpec.describe TherapiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/therapies").to route_to("therapies#index")
    end

    it "routes to #new" do
      expect(:get => "/therapies/new").to route_to("therapies#new")
    end

    it "routes to #show" do
      expect(:get => "/therapies/1").to route_to("therapies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/therapies/1/edit").to route_to("therapies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/therapies").to route_to("therapies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/therapies/1").to route_to("therapies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/therapies/1").to route_to("therapies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/therapies/1").to route_to("therapies#destroy", :id => "1")
    end

  end
end
