require 'rails_helper'

RSpec.describe "PatientsActs", type: :request do
  describe "GET /patients_acts" do
    it "works! (now write some real specs)" do
      get patients_acts_path
      expect(response).to have_http_status(200)
    end
  end
end
