require 'rails_helper'

RSpec.describe "HealthPlaces", type: :request do
  describe "GET /health_places" do
    it "works! (now write some real specs)" do
      get health_places_path
      expect(response).to have_http_status(200)
    end
  end
end
