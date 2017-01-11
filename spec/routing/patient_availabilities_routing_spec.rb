require "rails_helper"

RSpec.describe PatientAvailabilitiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/patient_availabilities").to route_to("patient_availabilities#index")
    end

    it "routes to #new" do
      expect(:get => "/patient_availabilities/new").to route_to("patient_availabilities#new")
    end

    it "routes to #show" do
      expect(:get => "/patient_availabilities/1").to route_to("patient_availabilities#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/patient_availabilities/1/edit").to route_to("patient_availabilities#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/patient_availabilities").to route_to("patient_availabilities#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/patient_availabilities/1").to route_to("patient_availabilities#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/patient_availabilities/1").to route_to("patient_availabilities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/patient_availabilities/1").to route_to("patient_availabilities#destroy", :id => "1")
    end

  end
end
