require 'rails_helper'

RSpec.describe "sharks/new", type: :view do
  before(:each) do
    assign(:shark, Shark.new(
      :color => "MyString",
      :fish => Fish.new
    ))
  end

#  it "renders new shark form" do
#    render

#    assert_select "form[action=?][method=?]", sharks_path, "post" do

#      assert_select "input[name=?]", "shark[color]"

#      assert_select "input[name=?]", "shark[fish_id]"
#    end
#  end
end
