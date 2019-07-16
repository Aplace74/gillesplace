class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :sku
      t.string :title
      t.string :description
      t.references :category, foreign_key: true
      t.references :type, foreign_key: true

      t.timestamps
    end
    add_monetize :products, :price, currency: { present: false }
  end
end
