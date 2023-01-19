require "rails_helper"

RSpec.describe Workshop::AuthorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/workshop/authors").to route_to("workshop/authors#index")
    end

    it "routes to #new" do
      expect(get: "/workshop/authors/new").to route_to("workshop/authors#new")
    end

    it "routes to #show" do
      expect(get: "/workshop/authors/1").to route_to("workshop/authors#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/workshop/authors/1/edit").to route_to("workshop/authors#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/workshop/authors").to route_to("workshop/authors#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/workshop/authors/1").to route_to("workshop/authors#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/workshop/authors/1").to route_to("workshop/authors#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/workshop/authors/1").to route_to("workshop/authors#destroy", id: "1")
    end
  end
end
