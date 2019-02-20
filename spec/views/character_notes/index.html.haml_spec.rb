require 'rails_helper'

RSpec.describe "character_notes/index", type: :view do
  before(:each) do
    assign(:character_notes, [
      CharacterNote.create!(
        :character => nil,
        :title => "Title",
        :body => "MyText"
      ),
      CharacterNote.create!(
        :character => nil,
        :title => "Title",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of character_notes" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
