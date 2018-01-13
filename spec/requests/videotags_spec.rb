require 'rails_helper'

RSpec.describe "Videotags", type: :request do
  describe "GET /videotags" do
    it "works! (now write some real specs)" do
      get videotags_path
      expect(response).to have_http_status(200)
    end
  end
end
