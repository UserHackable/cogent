require 'rails_helper'

RSpec.describe "character_notes/show", type: :view do
  before(:each) do
    @character_note = assign(:character_note, CharacterNote.create!(
      :character => nil,
      :title => "Title",
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
