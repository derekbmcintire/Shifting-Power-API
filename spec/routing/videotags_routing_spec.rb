require "rails_helper"

RSpec.describe VideotagsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/videotags").to route_to("videotags#index")
    end


    it "routes to #show" do
      expect(:get => "/videotags/1").to route_to("videotags#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/videotags").to route_to("videotags#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/videotags/1").to route_to("videotags#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/videotags/1").to route_to("videotags#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/videotags/1").to route_to("videotags#destroy", :id => "1")
    end

  end
end
