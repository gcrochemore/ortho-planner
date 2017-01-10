require 'rails_helper'

RSpec.describe "PatientsPathologies", type: :request do
  describe "GET /patients_pathologies" do
    it "works! (now write some real specs)" do
      get patients_pathologies_path
      expect(response).to have_http_status(200)
    end
  end
end
