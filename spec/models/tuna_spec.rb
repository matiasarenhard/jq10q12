require 'rails_helper'

RSpec.describe Tuna, type: :model do
  let(:fish) { create(:fish) }
  let(:valid_attributes) { attributes_for(:tuna).merge(fish_id: fish.id) }
  it "find by origin correct" do
      tuna = Tuna.find_by_origin(valid_attributes[:origin])
      expect(tuna.count) == 1
  end

  it "find by origin don't correct" do
      tuna = Tuna.find_by_origin("notOrigin")
      expect(tuna.count) == 0
  end
end
