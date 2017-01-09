require 'rails_helper'

RSpec.describe "SchoolTypes", type: :request do
  describe "GET /school_types" do
    it "works! (now write some real specs)" do
      get school_types_path
      expect(response).to have_http_status(200)
    end
  end
end
