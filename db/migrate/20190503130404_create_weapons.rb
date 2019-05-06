class CreateWeapons < ActiveRecord::Migration[5.2]
  def change
    create_table :weapons do |t|
      t.string :name
      t.integer :attk_bonus
      t.string :damage

      t.timestamps
    end
  end
end
