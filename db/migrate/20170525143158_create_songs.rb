class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :url
      t.integer :year_released
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
