require 'rails_helper'

RSpec.describe "ContactInformations", type: :request do
  describe "GET /contact_informations" do
    it "works! (now write some real specs)" do
      get contact_informations_path
      expect(response).to have_http_status(200)
    end
  end
end
