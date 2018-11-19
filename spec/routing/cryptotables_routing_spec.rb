require "rails_helper"

RSpec.describe CryptotablesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/cryptotables").to route_to("cryptotables#index")
    end

    it "routes to #new" do
      expect(:get => "/cryptotables/new").to route_to("cryptotables#new")
    end

    it "routes to #show" do
      expect(:get => "/cryptotables/1").to route_to("cryptotables#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cryptotables/1/edit").to route_to("cryptotables#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/cryptotables").to route_to("cryptotables#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cryptotables/1").to route_to("cryptotables#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cryptotables/1").to route_to("cryptotables#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cryptotables/1").to route_to("cryptotables#destroy", :id => "1")
    end
  end
end
