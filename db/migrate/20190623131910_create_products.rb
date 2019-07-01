class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :sku
      t.string :title
      t.string :photo1
      t.string :photo2
      t.string :photo3
      t.string :description
      t.references :category, foreign_key: true
      t.references :type, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
