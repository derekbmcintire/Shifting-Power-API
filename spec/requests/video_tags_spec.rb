require 'rails_helper'

RSpec.describe "VideoTags", type: :request do
  describe "GET /video_tags" do
    it "works! (now write some real specs)" do
      get video_tags_path
      expect(response).to have_http_status(200)
    end
  end
end
