require 'rails_helper'

RSpec.describe "Schoolings", type: :request do
  describe "GET /schoolings" do
    it "works! (now write some real specs)" do
      get schoolings_path
      expect(response).to have_http_status(200)
    end
  end
end
