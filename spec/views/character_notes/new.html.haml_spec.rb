require 'rails_helper'

RSpec.describe "character_notes/new", type: :view do
  before(:each) do
    assign(:character_note, CharacterNote.new(
      :character => nil,
      :title => "MyString",
      :body => "MyText"
    ))
  end

  it "renders new character_note form" do
    render

    assert_select "form[action=?][method=?]", character_notes_path, "post" do

      assert_select "input[name=?]", "character_note[character_id]"

      assert_select "input[name=?]", "character_note[title]"

      assert_select "textarea[name=?]", "character_note[body]"
    end
  end
end
