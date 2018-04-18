require 'rails_helper'

RSpec.describe "Tunas", type: :request do
  describe "GET /tunas" do
    it "works! (now write some real specs)" do
      get tunas_path
      expect(response).to have_http_status(200)
    end
  end
end
