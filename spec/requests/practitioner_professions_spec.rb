require 'rails_helper'

RSpec.describe "PractitionerProfessions", type: :request do
  describe "GET /practitioner_professions" do
    it "works! (now write some real specs)" do
      get practitioner_professions_path
      expect(response).to have_http_status(200)
    end
  end
end
