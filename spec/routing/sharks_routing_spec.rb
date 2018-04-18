require "rails_helper"

RSpec.describe SharksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sharks").to route_to("sharks#index")
    end

    it "routes to #new" do
      expect(:get => "/sharks/new").to route_to("sharks#new")
    end

    it "routes to #show" do
      expect(:get => "/sharks/1").to route_to("sharks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sharks/1/edit").to route_to("sharks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sharks").to route_to("sharks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sharks/1").to route_to("sharks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sharks/1").to route_to("sharks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sharks/1").to route_to("sharks#destroy", :id => "1")
    end

  end
end
