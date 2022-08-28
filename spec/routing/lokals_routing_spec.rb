require "rails_helper"

RSpec.describe LokalsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/lokals").to route_to("lokals#index")
    end

    it "routes to #new" do
      expect(get: "/lokals/new").to route_to("lokals#new")
    end

    it "routes to #show" do
      expect(get: "/lokals/1").to route_to("lokals#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/lokals/1/edit").to route_to("lokals#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/lokals").to route_to("lokals#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/lokals/1").to route_to("lokals#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/lokals/1").to route_to("lokals#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/lokals/1").to route_to("lokals#destroy", id: "1")
    end
  end
end
