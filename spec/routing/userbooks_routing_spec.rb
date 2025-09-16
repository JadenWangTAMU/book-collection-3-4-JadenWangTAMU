require "rails_helper"

RSpec.describe UserbooksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/userbooks").to route_to("userbooks#index")
    end

    it "routes to #new" do
      expect(get: "/userbooks/new").to route_to("userbooks#new")
    end

    it "routes to #show" do
      expect(get: "/userbooks/1").to route_to("userbooks#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/userbooks/1/edit").to route_to("userbooks#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/userbooks").to route_to("userbooks#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/userbooks/1").to route_to("userbooks#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/userbooks/1").to route_to("userbooks#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/userbooks/1").to route_to("userbooks#destroy", id: "1")
    end
  end
end
