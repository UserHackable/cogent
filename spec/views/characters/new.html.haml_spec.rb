require 'rails_helper'

RSpec.describe "characters/new", type: :view do
  before(:each) do
    assign(:character, Character.new(
      :name => "MyString",
      :player => nil,
      :age => "",
      :race => "MyString",
      :height => "",
      :body_type => "MyString"
    ))
  end

  it "renders new character form" do
    render

    assert_select "form[action=?][method=?]", characters_path, "post" do

      assert_select "input[name=?]", "character[name]"

      assert_select "input[name=?]", "character[player_id]"

      assert_select "input[name=?]", "character[age]"

      assert_select "input[name=?]", "character[race]"

      assert_select "input[name=?]", "character[height]"

      assert_select "input[name=?]", "character[body_type]"
    end
  end
end
