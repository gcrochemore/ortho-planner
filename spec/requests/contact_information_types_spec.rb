require 'rails_helper'

RSpec.describe "ContactInformationTypes", type: :request do
  describe "GET /contact_information_types" do
    it "works! (now write some real specs)" do
      get contact_information_types_path
      expect(response).to have_http_status(200)
    end
  end
end
