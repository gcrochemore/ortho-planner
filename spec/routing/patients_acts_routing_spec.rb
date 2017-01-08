require "rails_helper"

RSpec.describe PatientsActsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/patients_acts").to route_to("patients_acts#index")
    end

    it "routes to #new" do
      expect(:get => "/patients_acts/new").to route_to("patients_acts#new")
    end

    it "routes to #show" do
      expect(:get => "/patients_acts/1").to route_to("patients_acts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/patients_acts/1/edit").to route_to("patients_acts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/patients_acts").to route_to("patients_acts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/patients_acts/1").to route_to("patients_acts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/patients_acts/1").to route_to("patients_acts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/patients_acts/1").to route_to("patients_acts#destroy", :id => "1")
    end

  end
end
