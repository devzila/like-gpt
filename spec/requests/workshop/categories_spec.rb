require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/workshop/categories", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Workshop::Category. As you add validations to Workshop::Category, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Workshop::Category.create! valid_attributes
      get workshop_categories_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      category = Workshop::Category.create! valid_attributes
      get workshop_category_url(category)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_workshop_category_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      category = Workshop::Category.create! valid_attributes
      get edit_workshop_category_url(category)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Workshop::Category" do
        expect {
          post workshop_categories_url, params: { workshop_category: valid_attributes }
        }.to change(Workshop::Category, :count).by(1)
      end

      it "redirects to the created workshop_category" do
        post workshop_categories_url, params: { workshop_category: valid_attributes }
        expect(response).to redirect_to(workshop_category_url(Workshop::Category.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Workshop::Category" do
        expect {
          post workshop_categories_url, params: { workshop_category: invalid_attributes }
        }.to change(Workshop::Category, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post workshop_categories_url, params: { workshop_category: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested workshop_category" do
        category = Workshop::Category.create! valid_attributes
        patch workshop_category_url(category), params: { workshop_category: new_attributes }
        category.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the workshop_category" do
        category = Workshop::Category.create! valid_attributes
        patch workshop_category_url(category), params: { workshop_category: new_attributes }
        category.reload
        expect(response).to redirect_to(workshop_category_url(category))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        category = Workshop::Category.create! valid_attributes
        patch workshop_category_url(category), params: { workshop_category: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested workshop_category" do
      category = Workshop::Category.create! valid_attributes
      expect {
        delete workshop_category_url(category)
      }.to change(Workshop::Category, :count).by(-1)
    end

    it "redirects to the workshop_categories list" do
      category = Workshop::Category.create! valid_attributes
      delete workshop_category_url(category)
      expect(response).to redirect_to(workshop_categories_url)
    end
  end
end
