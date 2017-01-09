require 'rails_helper'

RSpec.describe "SchoolLevels", type: :request do
  describe "GET /school_levels" do
    it "works! (now write some real specs)" do
      get school_levels_path
      expect(response).to have_http_status(200)
    end
  end
end
