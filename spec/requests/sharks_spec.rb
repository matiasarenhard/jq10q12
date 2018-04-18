require 'rails_helper'

RSpec.describe "Sharks", type: :request do
  describe "GET /sharks" do
    it "works! (now write some real specs)" do
      get sharks_path
      expect(response).to have_http_status(200)
    end
  end
end
