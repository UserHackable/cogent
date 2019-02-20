require 'rails_helper'

RSpec.describe "character_skills/new", type: :view do
  before(:each) do
    assign(:character_skill, CharacterSkill.new(
      :character => nil,
      :skill => nil,
      :score => 1
    ))
  end

  it "renders new character_skill form" do
    render

    assert_select "form[action=?][method=?]", character_skills_path, "post" do

      assert_select "input[name=?]", "character_skill[character_id]"

      assert_select "input[name=?]", "character_skill[skill_id]"

      assert_select "input[name=?]", "character_skill[score]"
    end
  end
end
