require "rails_helper"

RSpec.describe Workshop::PostsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/workshop/posts").to route_to("workshop/posts#index")
    end

    it "routes to #new" do
      expect(get: "/workshop/posts/new").to route_to("workshop/posts#new")
    end

    it "routes to #show" do
      expect(get: "/workshop/posts/1").to route_to("workshop/posts#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/workshop/posts/1/edit").to route_to("workshop/posts#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/workshop/posts").to route_to("workshop/posts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/workshop/posts/1").to route_to("workshop/posts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/workshop/posts/1").to route_to("workshop/posts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/workshop/posts/1").to route_to("workshop/posts#destroy", id: "1")
    end
  end
end
