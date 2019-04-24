class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.integer :user_id
      t.string :name
      t.integer :class_id
      t.integer :race_id
      t.integer :armor_class
      t.integer :initiative
      t.integer :speed
      t.string :alignment
      t.integer :level
      t.integer :experience
      t.integer :proficiency_bonus
      t.integer :max_hp
      t.integer :current_hp
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma


      t.timestamps
    end
  end
end
