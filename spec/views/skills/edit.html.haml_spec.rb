require 'rails_helper'

RSpec.describe "skills/edit", type: :view do
  before(:each) do
    @skill = assign(:skill, Skill.create!(
      :name => "MyString",
      :parent_id => ""
    ))
  end

  it "renders the edit skill form" do
    render

    assert_select "form[action=?][method=?]", skill_path(@skill), "post" do

      assert_select "input[name=?]", "skill[name]"

      assert_select "input[name=?]", "skill[parent_id]"
    end
  end
end
