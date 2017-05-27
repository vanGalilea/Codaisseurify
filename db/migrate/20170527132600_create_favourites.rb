class CreateFavourites < ActiveRecord::Migration[5.1]
  def change
    create_table :favourites do |t|
      t.references :profile, foreign_key: true
      t.references :song, foreign_key: true

      t.timestamps
    end
  end
end
