require 'rails_helper'

RSpec.describe "character_skills/index", type: :view do
  before(:each) do
    assign(:character_skills, [
      CharacterSkill.create!(
        :character => nil,
        :skill => nil,
        :score => 2
      ),
      CharacterSkill.create!(
        :character => nil,
        :skill => nil,
        :score => 2
      )
    ])
  end

  it "renders a list of character_skills" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
