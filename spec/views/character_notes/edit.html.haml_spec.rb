require 'rails_helper'

RSpec.describe "character_notes/edit", type: :view do
  before(:each) do
    @character_note = assign(:character_note, CharacterNote.create!(
      :character => nil,
      :title => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit character_note form" do
    render

    assert_select "form[action=?][method=?]", character_note_path(@character_note), "post" do

      assert_select "input[name=?]", "character_note[character_id]"

      assert_select "input[name=?]", "character_note[title]"

      assert_select "textarea[name=?]", "character_note[body]"
    end
  end
end
