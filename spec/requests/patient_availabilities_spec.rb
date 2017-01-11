require 'rails_helper'

RSpec.describe "PatientAvailabilities", type: :request do
  describe "GET /patient_availabilities" do
    it "works! (now write some real specs)" do
      get patient_availabilities_path
      expect(response).to have_http_status(200)
    end
  end
end
