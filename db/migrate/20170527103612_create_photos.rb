class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.references :artist, foreign_key: true
      t.string :image

      t.timestamps
    end
  end
end
