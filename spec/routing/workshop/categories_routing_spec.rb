require "rails_helper"

RSpec.describe Workshop::CategoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/workshop/categories").to route_to("workshop/categories#index")
    end

    it "routes to #new" do
      expect(get: "/workshop/categories/new").to route_to("workshop/categories#new")
    end

    it "routes to #show" do
      expect(get: "/workshop/categories/1").to route_to("workshop/categories#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/workshop/categories/1/edit").to route_to("workshop/categories#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/workshop/categories").to route_to("workshop/categories#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/workshop/categories/1").to route_to("workshop/categories#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/workshop/categories/1").to route_to("workshop/categories#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/workshop/categories/1").to route_to("workshop/categories#destroy", id: "1")
    end
  end
end
