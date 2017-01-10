require "rails_helper"

RSpec.describe PatientsPathologiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/patients_pathologies").to route_to("patients_pathologies#index")
    end

    it "routes to #new" do
      expect(:get => "/patients_pathologies/new").to route_to("patients_pathologies#new")
    end

    it "routes to #show" do
      expect(:get => "/patients_pathologies/1").to route_to("patients_pathologies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/patients_pathologies/1/edit").to route_to("patients_pathologies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/patients_pathologies").to route_to("patients_pathologies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/patients_pathologies/1").to route_to("patients_pathologies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/patients_pathologies/1").to route_to("patients_pathologies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/patients_pathologies/1").to route_to("patients_pathologies#destroy", :id => "1")
    end

  end
end
