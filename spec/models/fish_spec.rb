require 'rails_helper'

RSpec.describe Fish, type: :model do
  it "find custom correct" do
    create(:fish)
    fish = Fish.find_custom()
    expect(fish.nil?).to be(false)
  end

  it "find custom don't correct" do
    Fish.delete_all
    fish = Fish.find_custom()
    expect(fish.count) == 0
  end
end
