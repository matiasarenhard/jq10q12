require 'rails_helper'

RSpec.describe "tunas/edit", type: :view do
  before(:each) do
    @tuna = assign(:tuna, Tuna.create!(
      :origin => "MyString",
      :fish => Fish.new
    ))
  end

#  it "renders the edit tuna form" do
#    render

#    assert_select "form[action=?][method=?]", tuna_path(@tuna), "post" do

#      assert_select "input[name=?]", "tuna[origin]"

#      assert_select "input[name=?]", "tuna[fish_id]"
#    end
#  end
end
