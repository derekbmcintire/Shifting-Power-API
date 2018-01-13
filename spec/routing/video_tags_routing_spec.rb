require "rails_helper"

RSpec.describe VideoTagsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/video_tags").to route_to("video_tags#index")
    end


    it "routes to #show" do
      expect(:get => "/video_tags/1").to route_to("video_tags#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/video_tags").to route_to("video_tags#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/video_tags/1").to route_to("video_tags#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/video_tags/1").to route_to("video_tags#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/video_tags/1").to route_to("video_tags#destroy", :id => "1")
    end

  end
end
