require 'rails_helper'

RSpec.describe Shark, type: :model do
  let(:fish) { create(:fish) }
  let(:valid_attributes) { attributes_for(:shark).merge(fish_id: fish.id) }
  it "find by color correct" do
    shark = Shark.find_by_color(valid_attributes[:color])
    expect(shark.count) == 1
  end

  it "find by color don't correct" do
    shark = Shark.find_by_color("notColor")
    expect(shark.count) == 0
  end
end
