class CreateRaces < ActiveRecord::Migration[5.2]
  def change
    create_table :races do |t|
      t.string :name
      t.string :api_url
      t.integer :speed
      t.integer :strength_bonus
      t.integer :dexterity_bonus
      t.integer :constitution_bonus
      t.integer :intelligence_bonus
      t.integer :wisdom_bonus
      t.integer :charisma_bonus

      t.timestamps
    end
  end
end
