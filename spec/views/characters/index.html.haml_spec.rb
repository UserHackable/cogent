require 'rails_helper'

RSpec.describe "characters/index", type: :view do
  before(:each) do
    assign(:characters, [
      Character.create!(
        :name => "Name",
        :player => nil,
        :age => "",
        :race => "Race",
        :height => "",
        :body_type => "Body Type"
      ),
      Character.create!(
        :name => "Name",
        :player => nil,
        :age => "",
        :race => "Race",
        :height => "",
        :body_type => "Body Type"
      )
    ])
  end

  it "renders a list of characters" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Race".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Body Type".to_s, :count => 2
  end
end
