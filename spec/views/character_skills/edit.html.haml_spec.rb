require 'rails_helper'

RSpec.describe "character_skills/edit", type: :view do
  before(:each) do
    @character_skill = assign(:character_skill, CharacterSkill.create!(
      :character => nil,
      :skill => nil,
      :score => 1
    ))
  end

  it "renders the edit character_skill form" do
    render

    assert_select "form[action=?][method=?]", character_skill_path(@character_skill), "post" do

      assert_select "input[name=?]", "character_skill[character_id]"

      assert_select "input[name=?]", "character_skill[skill_id]"

      assert_select "input[name=?]", "character_skill[score]"
    end
  end
end
