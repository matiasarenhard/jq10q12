require "rails_helper"

RSpec.describe TunasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tunas").to route_to("tunas#index")
    end

    it "routes to #new" do
      expect(:get => "/tunas/new").to route_to("tunas#new")
    end

    it "routes to #show" do
      expect(:get => "/tunas/1").to route_to("tunas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tunas/1/edit").to route_to("tunas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/tunas").to route_to("tunas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tunas/1").to route_to("tunas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tunas/1").to route_to("tunas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tunas/1").to route_to("tunas#destroy", :id => "1")
    end

  end
end
