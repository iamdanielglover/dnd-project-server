class CreateRaces < ActiveRecord::Migration[5.2]
  def change
    create_table :races do |t|
      t.string :name
      t.string :api_url
      t.integer :speed

      t.timestamps
    end
  end
end
