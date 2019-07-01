class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :quantity
      t.references :cart, foreign_key: true
      t.references :product, foreign_key: true
      t.references :photo_size, foreign_key: true
      t.references :frame, foreign_key: true

      t.timestamps
    end
  end
end
