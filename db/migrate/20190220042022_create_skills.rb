class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :name, index: true
      t.string :abrev
      t.boolean :category
      t.bigint :parent_id, index: true

      t.timestamps
    end
  end
end
