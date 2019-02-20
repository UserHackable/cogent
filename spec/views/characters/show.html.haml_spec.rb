require 'rails_helper'

RSpec.describe "characters/show", type: :view do
  before(:each) do
    @character = assign(:character, Character.create!(
      :name => "Name",
      :player => nil,
      :age => "",
      :race => "Race",
      :height => "",
      :body_type => "Body Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Race/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Body Type/)
  end
end
