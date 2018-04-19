require 'rails_helper'

RSpec.describe "sharks/show", type: :view do
  before(:each) do
    @shark = assign(:shark, Shark.create!(
      :color => "Color",
      :fish => nil
    ))
  end

  #it "renders attributes in <p>" do
  #  render
  #  expect(rendered).to match(/Color/)
  #  expect(rendered).to match(//)
  #end
end
