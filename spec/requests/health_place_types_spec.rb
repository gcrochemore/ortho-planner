require 'rails_helper'

RSpec.describe "HealthPlaceTypes", type: :request do
  describe "GET /health_place_types" do
    it "works! (now write some real specs)" do
      get health_place_types_path
      expect(response).to have_http_status(200)
    end
  end
end
