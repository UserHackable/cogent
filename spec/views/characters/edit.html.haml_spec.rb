require 'rails_helper'

RSpec.describe "characters/edit", type: :view do
  before(:each) do
    @character = assign(:character, Character.create!(
      :name => "MyString",
      :player => nil,
      :age => "",
      :race => "MyString",
      :height => "",
      :body_type => "MyString"
    ))
  end

  it "renders the edit character form" do
    render

    assert_select "form[action=?][method=?]", character_path(@character), "post" do

      assert_select "input[name=?]", "character[name]"

      assert_select "input[name=?]", "character[player_id]"

      assert_select "input[name=?]", "character[age]"

      assert_select "input[name=?]", "character[race]"

      assert_select "input[name=?]", "character[height]"

      assert_select "input[name=?]", "character[body_type]"
    end
  end
end
