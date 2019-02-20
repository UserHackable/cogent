class CreateCharacterNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :character_notes do |t|
      t.references :character, foreign_key: true
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
