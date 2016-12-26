require 'rails_helper'

RSpec.describe "Practitioners", type: :request do
  describe "GET /practitioners" do
    it "works! (now write some real specs)" do
      get practitioners_path
      expect(response).to have_http_status(200)
    end
  end
end
