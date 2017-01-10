require 'rails_helper'

RSpec.describe "AddressTypes", type: :request do
  describe "GET /address_types" do
    it "works! (now write some real specs)" do
      get address_types_path
      expect(response).to have_http_status(200)
    end
  end
end
