require 'rails_helper'

RSpec.describe "Userratings", type: :request do
  describe "GET /userratings" do
    it "works! (now write some real specs)" do
      get userratings_path
      expect(response).to have_http_status(200)
    end
  end
end
