require "rails_helper"

RSpec.describe CharacterNotesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/character_notes").to route_to("character_notes#index")
    end

    it "routes to #new" do
      expect(:get => "/character_notes/new").to route_to("character_notes#new")
    end

    it "routes to #show" do
      expect(:get => "/character_notes/1").to route_to("character_notes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/character_notes/1/edit").to route_to("character_notes#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/character_notes").to route_to("character_notes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/character_notes/1").to route_to("character_notes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/character_notes/1").to route_to("character_notes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/character_notes/1").to route_to("character_notes#destroy", :id => "1")
    end
  end
end
