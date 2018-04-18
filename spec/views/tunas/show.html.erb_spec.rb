require 'rails_helper'

RSpec.describe "tunas/show", type: :view do
  before(:each) do
    @tuna = assign(:tuna, Tuna.create!(
      :origin => "Origin",
      :fish => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Origin/)
    expect(rendered).to match(//)
  end
end
