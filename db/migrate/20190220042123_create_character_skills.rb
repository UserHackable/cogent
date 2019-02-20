class CreateCharacterSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :character_skills do |t|
      t.references :character, foreign_key: true
      t.references :skill, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
