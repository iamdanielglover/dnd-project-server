class CreateApiV1CharacterArmors < ActiveRecord::Migration[5.2]
  def change
    create_table :api_v1_character_armors do |t|
      t.integer :character_id
      t.integer :armor_id

      t.timestamps
    end
  end
end
