require "rails_helper"

RSpec.describe UserratingsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/userratings").to route_to("userratings#index")
    end


    it "routes to #show" do
      expect(:get => "/userratings/1").to route_to("userratings#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/userratings").to route_to("userratings#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/userratings/1").to route_to("userratings#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/userratings/1").to route_to("userratings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/userratings/1").to route_to("userratings#destroy", :id => "1")
    end

  end
end
