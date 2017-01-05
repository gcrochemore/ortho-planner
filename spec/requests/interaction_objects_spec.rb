require 'rails_helper'

RSpec.describe "InteractionObjects", type: :request do
  describe "GET /interaction_objects" do
    it "works! (now write some real specs)" do
      get interaction_objects_path
      expect(response).to have_http_status(200)
    end
  end
end
