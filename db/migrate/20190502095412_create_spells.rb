class CreateSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :spells do |t|
      t.string :name
      t.integer :api_id
      t.integer :character_id

      t.timestamps
    end
  end
end
