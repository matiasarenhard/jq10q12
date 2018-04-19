require 'rails_helper'

RSpec.describe "tunas/new", type: :view do
  before(:each) do
    assign(:tuna, Tuna.new(
      :origin => "MyString",
      :fish =>Fish.new
    ))
  end

  #it "renders new tuna form" do
  #  render

  #  assert_select "form[action=?][method=?]", tunas_path, "post" do

  #    assert_select "input[name=?]", "tuna[origin]"

  #    assert_select "input[name=?]", "tuna[fish_id]"
  #  end
  #end
end
