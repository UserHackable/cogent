class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.references :player, foreign_key: true
      t.float :age
      t.string :race
      t.float :height
      t.string :body_type

      t.timestamps
    end
    add_index :characters, :name
  end
end
