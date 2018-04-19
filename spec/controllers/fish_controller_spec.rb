require 'rails_helper'

RSpec.describe FishController, type: :controller do
  let(:valid_attributes) { attributes_for(:fish) }
  #let(:invalid_attributes) { attributes_for(:fish).merge(fish_id: "") }
  let(:valid_session) { {} }

  describe "FIND" do
    it "custom find correct" do
      create(:fish)
      fish = Fish.find_custom()
      expect(fish.nil?).to be(false)
    end

    it "custom find don't correct" do
      Fish.delete_all
      fish = Fish.find_custom()
      expect(fish.count) == 0
    end
  end

  describe "GET #index" do
    it "returns a success response" do
      fish = Fish.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      fish = Fish.create! valid_attributes
      get :show, params: {id: fish.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      fish = Fish.create! valid_attributes
      get :edit, params: {id: fish.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new fish" do
        expect { post :create, params: {fish: valid_attributes}, session: valid_session }.to change(Fish, :count).by(1)
      end

      it "redirects to the created fish" do
        post :create, params: {fish: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Fish.last)
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {{name: 'Changed'}}
      it "updates the requested fish" do
        fish = Fish.create! valid_attributes
        put :update, params: {id: fish.to_param, fish: new_attributes}, session: valid_session
        fish.reload
        expect(fish.name).to eq('Changed')

      end

      it "redirects to the fish" do
        fish = Fish.create! valid_attributes
        put :update, params: {id: fish.to_param, fish: valid_attributes}, session: valid_session
        expect(response).to redirect_to(fish)
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested fish" do
      fish = Fish.create! valid_attributes
      expect {delete :destroy, params: {id: fish.to_param}, session: valid_session}.to change(Fish, :count).by(-1)
    end
  end
end
