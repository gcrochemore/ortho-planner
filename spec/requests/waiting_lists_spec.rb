require 'rails_helper'

RSpec.describe "WaitingLists", type: :request do
  describe "GET /waiting_lists" do
    it "works! (now write some real specs)" do
      get waiting_lists_path
      expect(response).to have_http_status(200)
    end
  end
end
