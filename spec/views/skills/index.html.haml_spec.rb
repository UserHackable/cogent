require 'rails_helper'

RSpec.describe "skills/index", type: :view do
  before(:each) do
    assign(:skills, [
      Skill.create!(
        :name => "Name",
        :parent_id => ""
      ),
      Skill.create!(
        :name => "Name",
        :parent_id => ""
      )
    ])
  end

  it "renders a list of skills" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
