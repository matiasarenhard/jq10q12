require 'rails_helper'

RSpec.describe "sharks/edit", type: :view do
  before(:each) do
    @shark = assign(:shark, Shark.create!(
      :color => "MyString",
      :fish => Fish.new
    ))
  end

  it "renders the edit shark form" do
    render

    assert_select "form[action=?][method=?]", shark_path(@shark), "post" do

      assert_select "input[name=?]", "shark[color]"

      assert_select "input[name=?]", "shark[fish_id]"
    end
  end
end
