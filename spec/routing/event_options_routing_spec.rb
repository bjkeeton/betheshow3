require "rails_helper"

RSpec.describe EventOptionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/event_options").to route_to("event_options#index")
    end

    it "routes to #new" do
      expect(:get => "/event_options/new").to route_to("event_options#new")
    end

    it "routes to #show" do
      expect(:get => "/event_options/1").to route_to("event_options#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/event_options/1/edit").to route_to("event_options#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/event_options").to route_to("event_options#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/event_options/1").to route_to("event_options#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/event_options/1").to route_to("event_options#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/event_options/1").to route_to("event_options#destroy", :id => "1")
    end

  end
end
