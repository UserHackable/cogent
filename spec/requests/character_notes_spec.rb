require 'rails_helper'

RSpec.describe "CharacterNotes", type: :request do
  describe "GET /character_notes" do
    it "works! (now write some real specs)" do
      get character_notes_path
      expect(response).to have_http_status(200)
    end
  end
end
