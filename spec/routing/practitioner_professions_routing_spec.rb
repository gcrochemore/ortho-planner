require "rails_helper"

RSpec.describe PractitionerProfessionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/practitioner_professions").to route_to("practitioner_professions#index")
    end

    it "routes to #new" do
      expect(:get => "/practitioner_professions/new").to route_to("practitioner_professions#new")
    end

    it "routes to #show" do
      expect(:get => "/practitioner_professions/1").to route_to("practitioner_professions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/practitioner_professions/1/edit").to route_to("practitioner_professions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/practitioner_professions").to route_to("practitioner_professions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/practitioner_professions/1").to route_to("practitioner_professions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/practitioner_professions/1").to route_to("practitioner_professions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/practitioner_professions/1").to route_to("practitioner_professions#destroy", :id => "1")
    end

  end
end
