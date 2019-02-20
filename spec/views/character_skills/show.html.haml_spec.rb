require 'rails_helper'

RSpec.describe "character_skills/show", type: :view do
  before(:each) do
    @character_skill = assign(:character_skill, CharacterSkill.create!(
      :character => nil,
      :skill => nil,
      :score => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
