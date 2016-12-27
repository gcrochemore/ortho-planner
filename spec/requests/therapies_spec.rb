require 'rails_helper'

RSpec.describe "Therapies", type: :request do
  describe "GET /therapies" do
    it "works! (now write some real specs)" do
      get therapies_path
      expect(response).to have_http_status(200)
    end
  end
end
