require 'rails_helper'

RSpec.describe "sharks/index", type: :view do
  before(:each) do
    assign(:sharks, [
      Shark.create!(
        :color => "Color",
        :fish => Fish.new
      ),
      Shark.create!(
        :color => "Color",
        :fish => Fish.new
      )
    ])
  end

  #it "renders a list of sharks" do
  #  render
  #  assert_select "tr>td", :text => "Color".to_s, :count => 2
  #  assert_select "tr>td", :text => nil.to_s, :count => 2
  #end
end
