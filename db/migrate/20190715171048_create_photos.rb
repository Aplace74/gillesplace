class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :photo
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
