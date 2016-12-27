require 'rails_helper'

RSpec.describe "Pathologies", type: :request do
  describe "GET /pathologies" do
    it "works! (now write some real specs)" do
      get pathologies_path
      expect(response).to have_http_status(200)
    end
  end
end
