class CreateArmors < ActiveRecord::Migration[5.2]
  def change
    create_table :armors do |t|
      t.string :name
      t.integer :armor_class

      t.timestamps
    end
  end
end
