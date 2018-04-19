require 'rails_helper'

RSpec.describe TunasController, type: :controller do
  let(:fish) { create(:fish) }
  let(:valid_attributes) { attributes_for(:tuna).merge(fish_id: fish.id) }
  let(:invalid_attributes) { attributes_for(:tuna).merge(fish_id: nil) }
  let(:valid_session) { {} }

  describe "FIND BY ORIGIN" do
    it "find by origin correct" do
      tuna = Tuna.find_by_origin(valid_attributes[:origin])
      expect(tuna.count) == 1
    end

    it "find by origin don't correct" do
      tuna = Tuna.find_by_origin("notOrigin")
      expect(tuna.count) == 0 
    end
  end

  describe "GET #index" do
    it "returns a success response" do
      tuna = Tuna.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      tuna = Tuna.create! valid_attributes
      get :show, params: {id: tuna.to_param}, session: valid_session
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
      tuna = Tuna.create! valid_attributes
      get :edit, params: {id: tuna.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Tuna" do
        expect { post :create, params: {tuna: valid_attributes}, session: valid_session }.to change(Tuna, :count).by(1)
      end

      it "redirects to the created tuna" do
        post :create, params: {tuna: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Tuna.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {tuna: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {{origin: 'Changed'}}
      it "updates the requested tuna" do
        tuna = Tuna.create! valid_attributes
        put :update, params: {id: tuna.to_param, tuna: new_attributes}, session: valid_session
        tuna.reload
        expect(tuna.origin).to eq('Changed')

      end

      it "redirects to the tuna" do
        tuna = Tuna.create! valid_attributes
        put :update, params: {id: tuna.to_param, tuna: valid_attributes}, session: valid_session
        expect(response).to redirect_to(tuna)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        tuna = Tuna.create! valid_attributes
        put :update, params: {id: tuna.to_param, tuna: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested tuna" do
      tuna = Tuna.create! valid_attributes
      expect {delete :destroy, params: {id: tuna.to_param}, session: valid_session}.to change(Tuna, :count).by(-1)
    end

    it "redirects to the tunas list" do
      tuna = Tuna.create! valid_attributes
      delete :destroy, params: {id: tuna.to_param}, session: valid_session
      expect(response).to redirect_to(tunas_url)
    end
  end
end
