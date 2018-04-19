require 'rails_helper'

RSpec.describe SharksController, type: :controller do
  let(:fish) { create(:fish) }
  let(:valid_attributes) { attributes_for(:shark).merge(fish_id: fish.id) }
  let(:invalid_attributes) { attributes_for(:shark).merge(fish_id: nil) }
  let(:valid_session) { {} }

  describe "FIND BY COLOR" do
    it "find by color correct" do
      shark = Shark.find_by_color(valid_attributes[:color])
      expect(shark.count) == 1
    end

    it "find by color don't correct" do
      shark = Shark.find_by_color("notColor")
      expect(shark.count) == 0 
    end
  end

  describe "GET #index" do
    it "returns a success response" do
      shark = Shark.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      shark = Shark.create! valid_attributes
      get :show, params: {id: shark.to_param}, session: valid_session
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
      shark = Shark.create! valid_attributes
      get :edit, params: {id: shark.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Shark" do
        expect {post :create, params: {shark: valid_attributes}, session: valid_session}.to change(Shark, :count).by(1)
      end

      it "redirects to the created shark" do
        post :create, params: {shark: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Shark.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {shark: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {{color: 'Changed'}}
      
      it "updates the requested shark" do
        shark = Shark.create! valid_attributes
        put :update, params: {id: shark.to_param, shark: new_attributes}, session: valid_session
        shark.reload
        expect(shark.color).to eq('Changed')
      end

      it "redirects to the shark" do
        shark = Shark.create! valid_attributes
        put :update, params: {id: shark.to_param, shark: valid_attributes}, session: valid_session
        expect(response).to redirect_to(shark)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        shark = Shark.create! valid_attributes
        put :update, params: {id: shark.to_param, shark: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested shark" do
      shark = Shark.create! valid_attributes
      expect { delete :destroy, params: {id: shark.to_param}, session: valid_session }.to change(Shark, :count).by(-1)
    end

    it "redirects to the sharks list" do
      shark = Shark.create! valid_attributes
      delete :destroy, params: {id: shark.to_param}, session: valid_session
      expect(response).to redirect_to(sharks_url)
    end
  end

end
