require 'rails_helper'

RSpec.describe "tunas/index", type: :view do
  before(:each) do
    assign(:tunas, [
      Tuna.create!(
        :origin => "Origin",
        :fish => nil
      ),
      Tuna.create!(
        :origin => "Origin",
        :fish => nil
      )
    ])
  end

  it "renders a list of tunas" do
    render
    assert_select "tr>td", :text => "Origin".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
